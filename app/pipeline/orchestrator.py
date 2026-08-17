"""The pipeline state machine (design doc §4). Deliberately a plain Python
function with explicit stages and one bounded retry cycle — not a graph
framework — so every transition is visible and step-through-debuggable. See
design doc §4 for why (short version: this workflow is a bounded pipeline
with a single retry loop, not a multi-agent graph, so a hand-rolled state
machine is the right-sized tool; it's structured as pure functions per stage
so lifting it into LangGraph nodes later would be mechanical, not a rewrite).
"""
import openai

from .. import config, db, memory, trace
from ..schema_provider import get_schema_provider
from ..llm import get_llm_client
from . import query_templates, validate
from .interpret import interpret_and_ground

ALLOWED_TABLES = {
    "customers", "orders", "order_items", "products", "categories",
    "countries", "regions", "v_order_line_revenue",
}

REFUSAL_MESSAGES = {
    "destructive_operation": "I can only read and analyze data — I'm not able to modify, delete, or insert anything, even if asked directly.",
    "prompt_injection": "That request looks like an attempt to override my instructions rather than a data question, so I won't act on it.",
    "out_of_scope": "That's outside what I can help with — I answer questions about the business data in this database.",
    "unsupported_data": "That data isn't available in this database, so I can't answer that.",
}


def _build_refusal(reason: str, category: str, trace_obj: trace.Trace):
    message = REFUSAL_MESSAGES.get(category, REFUSAL_MESSAGES["out_of_scope"])
    trace_obj.set(intent="unsafe_request" if category in ("destructive_operation", "prompt_injection") else "out_of_scope")
    trace_obj.log("refused", error_category=category)
    return {
        "type": "refusal",
        "answer": message,
        "explanation": reason,
        "category": category,
        "sql_used": None,
        "data_preview": None,
        "assumptions": [],
        "caveats": [],
    }


def _build_clarification(question: str, trace_obj: trace.Trace):
    trace_obj.log("clarification_requested")
    return {
        "type": "clarification",
        "answer": question,
        "explanation": None,
        "sql_used": None,
        "data_preview": None,
        "assumptions": [],
        "caveats": [],
    }


def _build_failure(user_facing_message: str, debug_detail: str, trace_obj: trace.Trace, category: str):
    trace_obj.set(db_error=debug_detail)
    trace_obj.log("failed", error_category=category)
    return {
        "type": "error",
        "answer": user_facing_message,
        "explanation": debug_detail,
        "sql_used": None,
        "data_preview": None,
        "assumptions": [],
        "caveats": [],
    }


def _sql_for_attempt(attempt: dict):
    """Returns (sql, params) for a generation attempt, whether it came from a
    structured template or the raw_sql fallback."""
    if attempt["tool"] == "raw_sql":
        return attempt["args"]["sql"], []
    return query_templates.build_sql(attempt["tool"], attempt["args"])


def handle_message(session_id: str, user_message: str) -> dict:
    """Public entry point. Every turn makes at least one OpenAI call
    (routing, at minimum), and a production API occasionally rate-limits,
    times out, or 5xx's even when nothing is wrong on our end — the OpenAI
    SDK already retries a couple of times internally before raising, so by
    the time an error reaches here, those transient retries are already
    exhausted. Without this wrapper, that exception would propagate straight
    out of api/main.py's route handler (which has no try/except of its own):
    the user would see a raw 500, and — because the failure happens before
    trace.Trace.log() is ever reached inside the pipeline — the turn would be
    invisible in /traces and in eval output, which defeats the point of
    having observability at all. This is a last-resort boundary, not a
    substitute for the narrower, more specific error handling already inside
    the pipeline (the DB self-correction loop, the drill-down's own
    try/except, etc.) — those still run first and handle what they know how
    to handle; this only catches whatever gets past all of them.
    """
    t = trace.Trace(session_id, user_message)
    try:
        return _handle_message(t, session_id, user_message)
    except openai.OpenAIError as e:
        return _build_failure(
            "The AI service is temporarily unavailable or rate-limited right now — please try again in "
            "a moment.",
            f"{type(e).__name__}: {e}", t, "llm_api_error",
        )
    except Exception as e:
        # Genuinely unanticipated failure (not a query/validation/DB error —
        # those are already handled well before this point). Same reasoning
        # as above: fail into a friendly, traced response rather than a raw
        # crash, even though we can't say anything specific about the cause.
        return _build_failure(
            "Something unexpected went wrong while handling that question — please try again.",
            f"{type(e).__name__}: {e}", t, "unexpected_error",
        )


def _handle_message(t: trace.Trace, session_id: str, user_message: str) -> dict:
    llm = get_llm_client()
    store = memory.get_session_store()
    session = store.get(session_id)
    has_prior = session["last_context"] is not None
    last_question = session["last_context"]["resolved_question"] if has_prior else None

    # --- Stage 1: intent routing -------------------------------------------------
    # Passing the actual prior question (not just a has-context boolean) is
    # deliberate: a bare True/False flag gives the router almost nothing to
    # judge "does this continue that thread" against, and in testing that was
    # exactly what made short follow-ups ("what about 2024?") get misread as
    # brand-new, context-free questions more often than they should.
    intent_result = llm.classify_intent(user_message, has_prior_context=has_prior, last_question=last_question)
    intent = intent_result.get("intent", "new_question")
    t.set(intent=intent)

    if intent == "unsafe_request":
        # Security layer #1 (design doc §7): caught here, before any SQL is
        # even generated, regardless of what the query-generation model would
        # have done with it.
        return _build_refusal(intent_result.get("reasoning", ""), "destructive_operation", t)

    if intent == "out_of_scope":
        return _build_refusal(intent_result.get("reasoning", ""), "out_of_scope", t)

    if intent == "chitchat":
        t.log("chitchat")
        return {
            "type": "chitchat",
            "answer": "Hi — ask me anything about the business data (revenue, products, regions, customers, orders) and I'll pull the numbers.",
            "explanation": None, "sql_used": None, "data_preview": None, "assumptions": [], "caveats": [],
        }

    # --- Stage 2: context resolution ---------------------------------------------
    prior_context = session["last_context"] if (intent == "follow_up" and has_prior) else None
    if prior_context:
        resolved_question = llm.rewrite_followup(user_message, prior_context)
    else:
        resolved_question = user_message
    t.set(resolved_question=resolved_question)

    # --- Stage 3+4: query generation (ambiguity handling folded in — see
    # llm.py's ask_clarification/refuse tools, a deliberate cost-driven
    # simplification vs. a fully separate ambiguity-check call) ------------------
    schema_context = get_schema_provider().get_context(resolved_question)
    attempt = llm.generate_query(resolved_question, schema_context, prior_context)

    if attempt["tool"] == "ask_clarification":
        return _build_clarification(attempt["args"]["clarifying_question"], t)

    if attempt["tool"] == "refuse":
        return _build_refusal(attempt["args"]["reason"], attempt["args"]["category"], t)

    assumptions = [attempt["assumptions_text"]] if attempt.get("assumptions_text") else []

    # --- Stage 5-7: validate -> execute -> self-correction loop ------------------
    last_error = None
    result = None
    sql_final = None
    retries_used = 0

    for attempt_num in range(config.MAX_SELF_CORRECTION_RETRIES + 1):
        try:
            raw_sql, params = _sql_for_attempt(attempt)
        except query_templates.TemplateArgumentError as e:
            last_error = str(e)
        else:
            try:
                if attempt["tool"] == "raw_sql":
                    # Free-text SQL from the model: full validation, including
                    # rewriting in a LIMIT if it's missing.
                    safe_sql = validate.validate_sql(raw_sql, ALLOWED_TABLES, config.DB_MAX_ROWS)
                else:
                    # Template-built SQL: safe by construction, this is a
                    # redundant re-check (see validate.validate_template_sql
                    # docstring). Execute the original %s-parameterized SQL
                    # unchanged, with its bound params.
                    validate.validate_template_sql(raw_sql, ALLOWED_TABLES)
                    safe_sql = raw_sql
            except validate.SQLValidationError as e:
                last_error = str(e)
            else:
                try:
                    result = db.run_select(safe_sql, params)
                    sql_final = safe_sql
                    break
                except db.QueryExecutionError as e:
                    last_error = str(e)

        retries_used = attempt_num + 1
        if attempt_num < config.MAX_SELF_CORRECTION_RETRIES:
            t.set(retries=retries_used)
            attempt = llm.generate_query(
                resolved_question, schema_context, prior_context,
                retry_context={"previous_call": attempt, "db_error": last_error},
            )
            if attempt["tool"] == "ask_clarification":
                return _build_clarification(attempt["args"]["clarifying_question"], t)
            if attempt["tool"] == "refuse":
                return _build_refusal(attempt["args"]["reason"], attempt["args"]["category"], t)
            if attempt.get("assumptions_text"):
                assumptions.append(attempt["assumptions_text"])

    if result is None:
        return _build_failure(
            "I wasn't able to answer that — the query I generated kept failing. "
            "This might mean the question needs to be rephrased, or it's asking for something this "
            "database doesn't support.",
            last_error or "unknown error", t, "query_execution_failed",
        )

    # For display and for the interpretation step, use the SQL with actual
    # parameter values substituted in (via psycopg2's mogrify — see db.py),
    # not the raw %s-placeholder template. Showing/interpreting the
    # placeholder version was a real bug: the interpretation model couldn't
    # know what date range "period_a"/"period_b" actually meant, since it
    # never saw the real dates — it could only guess, which is exactly the
    # kind of ungrounded guess the grounding design is supposed to prevent.
    sql_display = result.get("resolved_sql", sql_final)

    t.set(tool=attempt["tool"], args=attempt.get("args"), sql_used=sql_display,
          validation_outcome="ok", row_count=result["row_count"])

    # --- Stage 7.5: bounded agentic drill-down --------------------------------
    # A genuine observe -> decide -> act step, not a fixed second query: only
    # offered when the first call is already a dimensioned comparison/trend
    # breakdown (compare_periods/trend_by_period with group_by set) — exactly
    # the case where a single tool call can only pick ONE dimension and a
    # company-wide "why did X change" total can look flat even when one
    # segment moved a lot. The model sees the actual first-query data (which
    # it couldn't know in advance) and decides for itself whether a second,
    # differently-grouped breakdown would sharpen the explanation. Capped at
    # config.MAX_ANALYSIS_DRILLDOWN_STEPS (1) so this stays a small bounded
    # planning step, not an open-ended agent loop — and a failure here never
    # fails the whole turn, since the drill-down is a bonus on top of an
    # already-successful primary answer, not a required step.
    additional_results = []
    analysis_review = None  # surfaced in the response even when it declines to drill down — see below
    if (config.MAX_ANALYSIS_DRILLDOWN_STEPS > 0
            and attempt["tool"] in ("compare_periods", "trend_by_period")
            and attempt.get("args", {}).get("group_by")):
        try:
            review = llm.review_analysis(
                resolved_question, attempt["tool"], attempt["args"], result["columns"], result["rows"],
            )
        except Exception as e:
            review = {"action": "explanation_sufficient", "args": {"reasoning": f"drill-down review failed: {e}"}}

        analysis_review = {
            "decision": review.get("action"),
            "reasoning": review.get("args", {}).get("reasoning", ""),
        }
        t.set(drilldown_review=review.get("action"))

        if review.get("action") == "drill_down":
            drill_group_by = review.get("args", {}).get("group_by")
            try:
                if not drill_group_by or drill_group_by == attempt["args"].get("group_by"):
                    raise query_templates.TemplateArgumentError("drill_down must use a different group_by")
                drill_args = dict(attempt["args"])
                drill_args["group_by"] = drill_group_by
                drill_sql, drill_params = query_templates.build_sql(attempt["tool"], drill_args)
                validate.validate_template_sql(drill_sql, ALLOWED_TABLES)
                drill_result = db.run_select(drill_sql, drill_params)
                additional_results.append({
                    "label": f"Additional breakdown by {drill_group_by} — {review['args'].get('reasoning', '')}".strip(" —"),
                    "sql": drill_result.get("resolved_sql", drill_sql),
                    "columns": drill_result["columns"],
                    "rows": drill_result["rows"],
                })
                t.set(drilldown_group_by=drill_group_by, drilldown_row_count=drill_result["row_count"])
            except (query_templates.TemplateArgumentError, validate.SQLValidationError, db.QueryExecutionError) as e:
                # Bonus step, not a required one — log and move on with just
                # the primary result rather than failing or retrying.
                t.set(drilldown_error=str(e))

    # --- Stage 8: interpretation + grounding --------------------------------------
    interpretation = interpret_and_ground(
        llm, resolved_question, sql_display, result["columns"], result["rows"], assumptions, additional_results
    )

    # --- Stage 9: response assembly + memory update -------------------------------
    response = {
        "type": "answer",
        "answer": interpretation["answer"],
        "explanation": interpretation["explanation"],
        "assumptions": [a for a in assumptions if a],
        "caveats": interpretation["caveats"] + (["Result was truncated to the row limit."] if result["truncated"] else []),
        "sql_used": sql_display,
        "additional_queries": [{"label": ar["label"], "sql": ar["sql"]} for ar in additional_results],
        # Makes the agentic drill-down decision visible EVEN WHEN it declines
        # to act — previously, "considered a second breakdown and decided it
        # wasn't needed" was a real decision the model made every time this
        # tool fires, but it left literally no trace anywhere if it said no.
        # An agentic step that's only visible when it acts is a much weaker
        # demonstration than one that shows its reasoning either way.
        "analysis_review": analysis_review,
        # Bumped from 20: the UI now charts this data (bar/line), and a
        # multi-period trend (e.g. 5 products x 12 months = 60 rows) would
        # get visibly cut off mid-chart at 20. Still bounded, not the full
        # DB_MAX_ROWS=500 — 100 covers realistic demo-scale trend/ranking
        # questions without meaningfully growing the response payload.
        "data_preview": result["rows"][:100],
        "row_count": result["row_count"],
        "tool_used": attempt["tool"],
        "retries_used": retries_used,
        # First-class hallucination signal (design doc §5.5 / brief's
        # "Important Considerations"). This was already computed by
        # interpret_and_ground on every single turn, not just eval runs —
        # it just used to be discarded except when it flagged something,
        # surfacing only as an ad hoc caveat string. Now it's a real field
        # any caller (API consumer, eval harness) can read directly instead
        # of parsing caveat text to guess whether an answer was grounded.
        "grounded": interpretation["grounded"],
    }

    store.record_turn(
        session_id, user_message=user_message, resolved_question=resolved_question,
        tool=attempt["tool"], args=attempt.get("args"), sql=sql_display,
        result_summary={"row_count": result["row_count"], "columns": result["columns"]},
        answer=interpretation["answer"],
    )

    t.set(answer=interpretation["answer"])
    t.log("success")
    return response

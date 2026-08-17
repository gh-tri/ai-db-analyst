"""Result interpretation + hallucination grounding check (design doc §5.5).

The LLM call here is given ONLY the actual returned rows — not the earlier
reasoning, not the conversation history — and instructed to answer strictly
from that data. That's the main grounding control. The numeric grounding
check below is a second, cheap, programmatic layer on top of it: extract the
numbers the model's answer actually states, and confirm each one traces back
to a value that was really in the result set. This is a heuristic (formatting
differences — "$1,234" vs "1234.00" — mean it can false-flag), so a mismatch
becomes a visible caveat on the response rather than a hard failure; treat it
as a second opinion, not a guarantee, and say so in the README.
"""
import re
from decimal import Decimal


_ISO_DATE_RE = re.compile(r"\b\d{4}-\d{2}-\d{2}\b")


def _coerce_text(value) -> str:
    """The model is prompted to return `answer`/`explanation` as plain
    strings, but response_format="json_object" only guarantees valid JSON
    syntax — not that specific shape. In real testing, GPT-4o returned a
    LIST of strings instead of one string for a naturally list-shaped answer
    (a top-5 ranking), which crashed this function with an AttributeError
    before this fix existed. llm.py now also requests a strict schema
    (response_format="json_schema") that should stop this at the source, but
    this coercion stays as a second, defensive layer — never trust an LLM's
    JSON to match your assumed shape, even a schema-constrained one, if a
    cheap normalization avoids a crash."""
    if value is None:
        return ""
    if isinstance(value, str):
        return value
    if isinstance(value, list):
        return "; ".join(_coerce_text(v) for v in value)
    return str(value)


def _coerce_list(value) -> list[str]:
    if value is None:
        return []
    if isinstance(value, list):
        return [_coerce_text(v) for v in value]
    if isinstance(value, str):
        return [value] if value else []
    return [str(value)]


def _numbers_in_text(text: str) -> list[float]:
    if not text:
        return []
    cleaned = text.replace(",", "")
    cleaned = _ISO_DATE_RE.sub(" ", cleaned)  # dates aren't the numeric claims we're grounding
    found = re.findall(r"-?\d+\.?\d*", cleaned)
    out = []
    for f in found:
        try:
            out.append(float(f))
        except ValueError:
            continue
    return out


def _numbers_in_rows(rows: list[dict]) -> set[float]:
    values = set()
    for row in rows:
        for v in row.values():
            if isinstance(v, bool):
                continue
            if isinstance(v, (int, float, Decimal)):
                values.add(round(float(v), 2))
                values.add(round(float(v)))  # also allow the rounded/whole-number form
    return values


def _looks_like_a_year(n: float) -> bool:
    # Almost every answer mentions the year it's talking about ("...in
    # 2025"), and that number obviously won't appear in the row values
    # themselves — without this, that alone would flag as "unverified" on
    # nearly every response. This dataset's actual revenue/count values are
    # never whole numbers in the 1900-2100 range in practice, so this
    # exclusion costs effectively nothing in exchange for a lot less noise.
    return n == int(n) and 1900 <= n <= 2100


def grounding_check(answer_text: str, explanation_text: str, rows: list[dict]) -> dict:
    """Returns {"grounded": bool, "unverified_numbers": [...]}. Small integers
    (<10) are excluded from the check — they're overwhelmingly rank/count
    words ("the top 3 products") rather than data values, and flagging them
    produces mostly false positives. Numbers that look like a calendar year
    are excluded for the same reason (see _looks_like_a_year)."""
    stated = set(_numbers_in_text(answer_text)) | set(_numbers_in_text(explanation_text))
    stated = {n for n in stated if abs(n) >= 10 and not _looks_like_a_year(n)}
    available = _numbers_in_rows(rows)

    unverified = []
    for n in stated:
        if any(abs(n - a) < 0.5 or (a != 0 and abs(n - a) / abs(a) < 0.01) for a in available):
            continue
        unverified.append(n)

    return {"grounded": len(unverified) == 0, "unverified_numbers": unverified}


def interpret_and_ground(llm_client, question: str, sql_used: str, columns: list,
                          rows: list, assumptions: list, additional_results: list | None = None) -> dict:
    """`additional_results`, if present, is the output of the bounded agentic
    drill-down step (orchestrator.py "Stage 7.5") — a second, model-decided
    query result (e.g. the same comparison broken down by a different
    dimension). Each entry is {"label", "sql", "columns", "rows"}. Its rows
    are shown to the interpretation model alongside the primary result AND
    included in the grounding check's pool of "real" values — a number the
    answer states that only appears in the drill-down data is just as
    grounded as one from the primary query, since both came from the actual
    database."""
    additional_results = additional_results or []
    result = llm_client.interpret_results(question, sql_used, columns, rows, assumptions, additional_results)
    answer_text = _coerce_text(result.get("answer"))
    explanation_text = _coerce_text(result.get("explanation"))
    caveats = _coerce_list(result.get("caveats"))

    all_rows = list(rows) + [r for ar in additional_results for r in ar.get("rows", [])]
    check = grounding_check(answer_text, explanation_text, all_rows)
    if not check["grounded"]:
        caveats.append(
            "Grounding check flagged number(s) in this answer that don't clearly trace back to the "
            f"query results ({check['unverified_numbers']}) — treat with extra caution and verify "
            "against the data shown below."
        )

    return {
        "answer": answer_text,
        "explanation": explanation_text,
        "caveats": caveats,
        "grounded": check["grounded"],
    }

#!/usr/bin/env python3
"""Basic evaluation harness (design doc §10).

Deliberately checks against the RAW returned data (data_preview), not the
LLM's natural-language prose — the prose's exact wording legitimately varies
between models/runs, but the underlying query result shouldn't. This is what
makes the eval meaningful and reproducible regardless of which LLM client is
plugged in (mock or real OpenAI): it's really testing "did the pipeline
retrieve the right numbers," which is the part that has an objectively
correct answer, computed independently in advance directly against the
seeded database (see the queries used to build eval_set.json).

Run order matters: eval_set.json is processed in file order, not in
parallel, because the follow_up category depends on an earlier item having
already populated that session's conversation memory.
"""
import json
import os
import sys
from decimal import Decimal

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

from app.pipeline.orchestrator import handle_message
from app import config

EVAL_SET_PATH = os.path.join(os.path.dirname(__file__), "eval_set.json")
RESULTS_JSON_PATH = os.path.join(os.path.dirname(__file__), "eval_results.json")
RESULTS_MD_PATH = os.path.join(os.path.dirname(__file__), "eval_results.md")


def _numeric_values_in_rows(rows):
    values = []
    for row in rows or []:
        for v in row.values():
            if isinstance(v, bool):
                continue
            if isinstance(v, (int, float, Decimal)):
                values.append(float(v))
    return values


def _value_matches(expected, available, tolerance_pct):
    for a in available:
        if abs(expected) < 1e-9:
            if abs(a) < 1e-6:
                return True
            continue
        if abs(a - expected) / abs(expected) * 100 <= tolerance_pct:
            return True
    return False


def evaluate_item(item, response):
    expected_type = item["expected_type"]
    expected_types = expected_type if isinstance(expected_type, list) else [expected_type]

    checks = []
    ok = True

    type_ok = response["type"] in expected_types
    checks.append(("response_type", response["type"], expected_types, type_ok))
    ok = ok and type_ok

    if "expected_values" in item and response["type"] == "answer":
        available = _numeric_values_in_rows(response.get("data_preview"))
        for expected_val in item["expected_values"]:
            matched = _value_matches(expected_val, available, item.get("tolerance_pct", 1.0))
            checks.append((f"value~{expected_val}", available[:8], expected_val, matched))
            ok = ok and matched

    if "expected_value_sets" in item and response["type"] == "answer":
        # OR semantics across alternative sets of ground-truth values: the
        # question has more than one equally-valid correct lens (e.g. the
        # same underlying anomaly is real whether surfaced by region or by
        # category — a single tool call can only pick one dimension), so the
        # check passes if the retrieved data matches ANY one full set, not
        # just a flat AND-matched list against one fixed ground truth.
        available = _numeric_values_in_rows(response.get("data_preview"))
        tolerance = item.get("tolerance_pct", 1.0)
        any_set_matched = False
        for value_set in item["expected_value_sets"]:
            if all(_value_matches(v, available, tolerance) for v in value_set):
                any_set_matched = True
                break
        checks.append(("value_sets (any match)", available[:8], item["expected_value_sets"], any_set_matched))
        ok = ok and any_set_matched

    if item.get("expected_nonempty_assumptions") and response["type"] == "answer":
        has_assumptions = bool(response.get("assumptions"))
        checks.append(("nonempty_assumptions", response.get("assumptions"), True, has_assumptions))
        ok = ok and has_assumptions

    return ok, checks


def main():
    with open(EVAL_SET_PATH) as f:
        eval_set = json.load(f)

    results = []
    for item in eval_set:
        response = handle_message(item["session_id"], item["question"])
        ok, checks = evaluate_item(item, response)
        results.append({
            "id": item["id"],
            "category": item["category"],
            "question": item["question"],
            "passed": ok,
            "response_type": response["type"],
            "answer": response.get("answer"),
            "sql_used": response.get("sql_used"),
            # First-class hallucination signal (app/pipeline/interpret.py's
            # grounding_check, surfaced via orchestrator.py's response dict).
            # None for non-"answer" response types (refusal/clarification/
            # chitchat/error), where grounding doesn't apply — only "answer"
            # responses state numbers that could be hallucinated in the
            # first place.
            "grounded": response.get("grounded"),
            "checks": checks,
        })
        print(f"[{'PASS' if ok else 'FAIL'}] {item['id']} ({item['category']})")

    with open(RESULTS_JSON_PATH, "w") as f:
        json.dump(results, f, indent=2, default=str)

    total = len(results)
    passed = sum(1 for r in results if r["passed"])

    by_category = {}
    for r in results:
        c = by_category.setdefault(r["category"], {"total": 0, "passed": 0})
        c["total"] += 1
        c["passed"] += int(r["passed"])

    # Hallucination rate: a real, reported number, not just a mechanism.
    # Deliberately kept separate from the pass/fail accuracy check above —
    # grounding_check() is an explicitly-documented heuristic (formatting
    # differences like "$1,234" vs "1234.00" can false-flag it, see
    # app/pipeline/interpret.py's docstring), so folding it into pass/fail
    # would make the accuracy eval flaky on top of a known-imprecise signal.
    # Reported as its own metric instead — exactly matching how the brief
    # names hallucination as its own "Important Consideration," distinct
    # from accuracy.
    answered = [r for r in results if r["response_type"] == "answer"]
    grounded_count = sum(1 for r in answered if r["grounded"] is True)
    ungrounded = [r for r in answered if r["grounded"] is False]

    lines = ["# Evaluation Results\n"]
    lines.append(f"**LLM client:** {'mock (rule-based, no API key)' if config.USE_MOCK_LLM else 'OpenAI (' + config.MODEL_STRONG + ' / ' + config.MODEL_CHEAP + ')'}\n")
    lines.append(f"**Overall: {passed}/{total} passed ({passed/total*100:.0f}%)**\n")
    if answered:
        lines.append(
            f"**Hallucination check: {grounded_count}/{len(answered)} answered questions had every stated "
            f"number trace back to real query results ({grounded_count/len(answered)*100:.0f}% grounded).**\n"
        )
        if ungrounded:
            lines.append(
                f"Flagged as potentially ungrounded: {', '.join(r['id'] for r in ungrounded)} — see their "
                f"caveats in the detail section below for the specific unverified number(s). This is a "
                f"heuristic (app/pipeline/interpret.py), so treat it as a signal to double-check, not "
                f"certain proof of a wrong answer.\n"
            )

    lines.append("## By category\n")
    lines.append("| Category | Passed | Total |")
    lines.append("|---|---|---|")
    for cat, c in sorted(by_category.items()):
        lines.append(f"| {cat} | {c['passed']} | {c['total']} |")
    lines.append("")

    lines.append("## Detail\n")
    lines.append("| ID | Category | Result | Question | Response type | Grounded |")
    lines.append("|---|---|---|---|---|---|")
    for r in results:
        mark = "✅" if r["passed"] else "❌"
        grounded_mark = {"True": "✅", "False": "⚠️"}.get(str(r["grounded"]), "–")
        lines.append(f"| {r['id']} | {r['category']} | {mark} | {r['question']} | {r['response_type']} | {grounded_mark} |")
    lines.append("")

    lines.append("## Failures (detail)\n")
    any_failures = False
    for r in results:
        if not r["passed"]:
            any_failures = True
            lines.append(f"### {r['id']}: {r['question']}")
            lines.append(f"- response type: `{r['response_type']}`")
            lines.append(f"- answer: {r['answer']}")
            for check_name, actual, expected, check_ok in r["checks"]:
                if not check_ok:
                    lines.append(f"- FAILED check `{check_name}`: expected `{expected}`, got `{actual}`")
            lines.append("")
    if not any_failures:
        lines.append("None.\n")

    with open(RESULTS_MD_PATH, "w") as f:
        f.write("\n".join(lines))

    print(f"\n{passed}/{total} passed ({passed/total*100:.0f}%)")
    print(f"Full results written to {RESULTS_MD_PATH} and {RESULTS_JSON_PATH}")


if __name__ == "__main__":
    main()

"""Isolated verification of the agentic drill-down REVIEW step
(app/llm.py's review_analysis, exercised from app/pipeline/orchestrator.py's
"Stage 7.5"), independent of whether any particular live question happens to
produce a first-breakdown result that's genuinely ambiguous.

Why this script exists: the real dataset's only deliberately seeded anomaly
(APAC / Electronics, Q2 2025) is intentionally a very clear, single-dimension
signal — so whichever dimension the model tries first for that question
usually already looks conclusive, and the review step correctly declines to
drill down. That's CORRECT behavior, but it means live testing against the
demo dataset may rarely happen to land on a case where a drill-down is
actually warranted. This script sidesteps that by handing the review step
two HAND-CRAFTED result sets directly — one genuinely flat/inconclusive, one
clearly conclusive — to confirm the real model makes the right call in BOTH
directions, not just that it always (or never) drills down regardless of
input.

This does NOT touch the running app or the database — it calls
app.llm.get_llm_client().review_analysis() directly with synthetic rows.
Requires OPENAI_API_KEY set in .env (same as normal use) — with no key
configured, this runs against the mock client instead, which follows a fixed
rule (see MockLLMClient.review_analysis) rather than making a real judgment
call, so the interesting part of this script needs the real key.
"""
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

from app import config
from app.llm import get_llm_client

COLUMNS = ["period", "group_value", "value"]

# --- Case 1: genuinely flat/inconclusive first breakdown -------------------
# Aggregate revenue declined ~15% (1,000,000 -> 850,000), but the decline is
# spread almost EVENLY across all four regions (~15% each) — so the region
# breakdown doesn't point at any one concentrated cause. This is exactly the
# "looks flat, a different dimension might reveal more" case the drill-down
# step exists for. Expectation: action == "drill_down".
FLAT_ROWS = [
    {"period": "period_a", "group_value": "North America", "value": 250000.00},
    {"period": "period_a", "group_value": "EMEA", "value": 250000.00},
    {"period": "period_a", "group_value": "APAC", "value": 250000.00},
    {"period": "period_a", "group_value": "LATAM", "value": 250000.00},
    {"period": "period_b", "group_value": "North America", "value": 212500.00},
    {"period": "period_b", "group_value": "EMEA", "value": 212750.00},
    {"period": "period_b", "group_value": "APAC", "value": 212300.00},
    {"period": "period_b", "group_value": "LATAM", "value": 212900.00},
]
FLAT_ARGS = {
    "metric": "revenue", "group_by": "region",
    "period_a_start": "2025-01-01", "period_a_end": "2025-03-31",
    "period_b_start": "2025-04-01", "period_b_end": "2025-06-30",
    "region_filter": None, "category_filter": None,
}
FLAT_QUESTION = "Why did revenue decline in this comparison?"

# --- Case 2: clearly conclusive first breakdown (control case) -------------
# One region obviously craters while every other region grows — a real,
# concentrated signal the region lens already explains well. This mirrors
# the shape of the actual seeded APAC anomaly. Expectation:
# action == "explanation_sufficient" — proving the model isn't just always
# drilling down regardless of what it's shown.
CLEAR_ROWS = [
    {"period": "period_a", "group_value": "North America", "value": 300000.00},
    {"period": "period_a", "group_value": "EMEA", "value": 280000.00},
    {"period": "period_a", "group_value": "APAC", "value": 320000.00},
    {"period": "period_a", "group_value": "LATAM", "value": 260000.00},
    {"period": "period_b", "group_value": "North America", "value": 330000.00},
    {"period": "period_b", "group_value": "EMEA", "value": 300000.00},
    {"period": "period_b", "group_value": "APAC", "value": 190000.00},
    {"period": "period_b", "group_value": "LATAM", "value": 275000.00},
]
CLEAR_ARGS = dict(FLAT_ARGS)
CLEAR_QUESTION = "Why did revenue decline in this comparison?"


def run_case(label, question, first_args, rows, expected_action):
    llm = get_llm_client()
    result = llm.review_analysis(question, "compare_periods", first_args, COLUMNS, rows)
    action = result.get("action")
    reasoning = result.get("args", {}).get("reasoning", "")
    match = "MATCHES expectation" if action == expected_action else "DID NOT MATCH expectation"
    print(f"--- {label} ---")
    print(f"  expected: {expected_action}")
    print(f"  actual:   {action}  ({match})")
    print(f"  model's reasoning: {reasoning}")
    if action == "drill_down":
        print(f"  chosen drill-down dimension: {result.get('args', {}).get('group_by')}")
    print()
    return action == expected_action


def main():
    if config.USE_MOCK_LLM:
        print(
            "WARNING: no OPENAI_API_KEY detected — running against the mock client, which follows a "
            "fixed rule rather than a real judgment call. Set OPENAI_API_KEY in .env to actually verify "
            "the real model's decision-making.\n"
        )

    results = [
        run_case("Case 1: flat/inconclusive breakdown", FLAT_QUESTION, FLAT_ARGS, FLAT_ROWS, "drill_down"),
        run_case("Case 2: clear/conclusive breakdown (control)", CLEAR_QUESTION, CLEAR_ARGS, CLEAR_ROWS, "explanation_sufficient"),
    ]

    print("=" * 70)
    if all(results):
        print("Both cases matched expectations — the review step is making a real, "
              "context-dependent decision in both directions, not just always (or never) drilling down.")
    else:
        print("At least one case didn't match — see detail above. Note LLM judgment calls aren't "
              "100% deterministic even at temperature=0 in rare edge cases; re-run once before assuming a bug.")


if __name__ == "__main__":
    main()

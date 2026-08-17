"""Parameterized SQL builders for the structured query-generation path
(design doc §5.1). This is the primary, preferred path — raw LLM-generated
SQL (see raw_sql.py) is the fallback for the minority of questions that don't
fit one of these patterns.

Security property that matters here: the model never gets to put arbitrary
text into the SQL string itself. Every identifier (column/table name) used
below comes from a small Python dict keyed by an enum value that the tool
schema already constrains (see llm.py QUERY_TOOLS) and that we re-validate
here regardless. Every actual VALUE (dates, filter strings, N) is passed as a
bound psycopg2 parameter, never string-interpolated. That combination makes
SQL injection structurally impossible on this path, independent of whether
the LLM "behaves" — this is the main accuracy+security win of the hybrid
design over pure text-to-SQL.
"""

METRIC_EXPR = {
    "revenue": "SUM(revenue)",
    "units_sold": "SUM(quantity)",
    "order_count": "COUNT(DISTINCT order_id)",
    "average_order_value": "SUM(revenue) / NULLIF(COUNT(DISTINCT order_id), 0)",
}

GROUP_COLUMNS = {
    "product": "product_name",
    "category": "category_name",
    "region": "region_name",
    "country": "country_name",
    "customer": "customer_name",
}


class TemplateArgumentError(ValueError):
    """Raised when the model's chosen template arguments reference something
    outside the whitelist. Treated as a generation error upstream and fed
    into the self-correction retry loop, same as a DB error would be."""


def _metric_expr(metric: str) -> str:
    if metric not in METRIC_EXPR:
        raise TemplateArgumentError(f"Unknown metric '{metric}'. Valid metrics: {list(METRIC_EXPR)}")
    return METRIC_EXPR[metric]


def _group_col(group_by: str | None) -> str | None:
    if group_by is None:
        return None
    if group_by not in GROUP_COLUMNS:
        raise TemplateArgumentError(f"Unknown group_by '{group_by}'. Valid: {list(GROUP_COLUMNS)}")
    return GROUP_COLUMNS[group_by]


def build_get_top_n(args: dict):
    metric_sql = _metric_expr(args["metric"])
    group_col = _group_col(args["group_by"])
    direction = "DESC" if args.get("direction", "top") == "top" else "ASC"
    n = int(args["n"])
    if n <= 0 or n > 100:
        raise TemplateArgumentError("n must be between 1 and 100")

    where, params = ["status = 'completed'", "order_date BETWEEN %s AND %s"], [args["start_date"], args["end_date"]]
    if args.get("region_filter"):
        where.append("region_name = %s")
        params.append(args["region_filter"])
    if args.get("category_filter"):
        where.append("category_name = %s")
        params.append(args["category_filter"])

    sql = (
        f"SELECT {group_col} AS {args['group_by']}, {metric_sql} AS {args['metric']} "
        f"FROM analyst.v_order_line_revenue "
        f"WHERE {' AND '.join(where)} "
        f"GROUP BY {group_col} "
        f"ORDER BY {args['metric']} {direction} "
        f"LIMIT %s"
    )
    params.append(n)
    return sql, params


def build_compare_periods(args: dict):
    metric_sql = _metric_expr(args["metric"])
    group_col = _group_col(args.get("group_by"))

    where_common, params_common = ["status = 'completed'"], []
    if args.get("region_filter"):
        where_common.append("region_name = %s")
        params_common.append(args["region_filter"])
    if args.get("category_filter"):
        where_common.append("category_name = %s")
        params_common.append(args["category_filter"])
    where_common_sql = " AND ".join(where_common)

    select_group = f"{group_col} AS group_value, " if group_col else ""
    group_clause = f"GROUP BY {group_col}" if group_col else ""

    rank_limit = args.get("rank_limit")
    rank_direction = args.get("rank_direction")

    if rank_limit is not None or rank_direction is not None:
        # Real ranking + filtering combined with a period comparison — e.g.
        # "why did revenue change among our lower-performing products."
        # Before this, compare_periods only ever had one mode: aggregate
        # EVERY entity in the dimension, in both periods, full stop. A
        # question asking about a ranked SUBSET ("lower-performing",
        # "our top 5 customers") had no way to actually be scoped — the model
        # could only claim an assumption about a subset in its accompanying
        # text while the query silently returned all of them, which is a
        # real accuracy bug (confirmed twice in testing): numbers shown were
        # real, but not actually restricted to what the question asked for.
        #
        # Fix: rank entities by the metric in period_b (the more
        # recent/primary period the question is actually about — "our
        # lower-performing products IN Q1 2024" ranks by Q1 2024, not by
        # whatever period_a happens to be), take the top/bottom N, then
        # return both periods' values for exactly that same fixed cohort —
        # so period_a shows what THOSE SAME entities earned before, not a
        # separately-ranked, possibly-different set. That's what makes this
        # a real "how did our bottom performers change" answer instead of
        # two independently-ranked snapshots that don't logically connect.
        if not group_col:
            raise TemplateArgumentError(
                "rank_limit/rank_direction require group_by to be set — ranking needs a dimension to rank by."
            )
        if rank_limit is None or rank_direction is None:
            raise TemplateArgumentError("rank_limit and rank_direction must be provided together.")
        try:
            rank_limit = int(rank_limit)
        except (TypeError, ValueError):
            raise TemplateArgumentError("rank_limit must be an integer.")
        if rank_limit <= 0 or rank_limit > 100:
            raise TemplateArgumentError("rank_limit must be between 1 and 100.")
        if rank_direction not in ("top", "bottom"):
            raise TemplateArgumentError(f"Unknown rank_direction '{rank_direction}'. Valid: top, bottom")
        rank_order = "DESC" if rank_direction == "top" else "ASC"

        sql = (
            f"WITH ranked_entities AS ("
            f"SELECT {group_col} AS entity, {metric_sql} AS rank_metric "
            f"FROM analyst.v_order_line_revenue "
            f"WHERE {where_common_sql} AND order_date BETWEEN %s AND %s "
            f"GROUP BY {group_col} "
            f"ORDER BY rank_metric {rank_order} "
            f"LIMIT %s) "
            f"SELECT 'period_a' AS period, {select_group}{metric_sql} AS value "
            f"FROM analyst.v_order_line_revenue "
            f"WHERE {where_common_sql} AND order_date BETWEEN %s AND %s "
            f"AND {group_col} IN (SELECT entity FROM ranked_entities) "
            f"{group_clause} "
            f"UNION ALL "
            f"SELECT 'period_b' AS period, {select_group}{metric_sql} AS value "
            f"FROM analyst.v_order_line_revenue "
            f"WHERE {where_common_sql} AND order_date BETWEEN %s AND %s "
            f"AND {group_col} IN (SELECT entity FROM ranked_entities) "
            f"{group_clause}"
        )
        params = (
            list(params_common) + [args["period_b_start"], args["period_b_end"], rank_limit]
            + list(params_common) + [args["period_a_start"], args["period_a_end"]]
            + list(params_common) + [args["period_b_start"], args["period_b_end"]]
        )
        return sql, params

    sql = f"""
        SELECT 'period_a' AS period, {select_group}{metric_sql} AS value
        FROM analyst.v_order_line_revenue
        WHERE {where_common_sql} AND order_date BETWEEN %s AND %s
        {group_clause}
        UNION ALL
        SELECT 'period_b' AS period, {select_group}{metric_sql} AS value
        FROM analyst.v_order_line_revenue
        WHERE {where_common_sql} AND order_date BETWEEN %s AND %s
        {group_clause}
    """
    params = (
        list(params_common) + [args["period_a_start"], args["period_a_end"]]
        + list(params_common) + [args["period_b_start"], args["period_b_end"]]
    )
    return sql, params


def build_trend_by_period(args: dict):
    metric_sql = _metric_expr(args["metric"])
    group_col = _group_col(args.get("group_by"))
    granularity = args["granularity"]
    if granularity not in ("month", "quarter", "year"):
        raise TemplateArgumentError("granularity must be month/quarter/year")

    where, params = ["status = 'completed'", "order_date BETWEEN %s AND %s"], [args["start_date"], args["end_date"]]
    if args.get("region_filter"):
        where.append("region_name = %s")
        params.append(args["region_filter"])
    if args.get("category_filter"):
        where.append("category_name = %s")
        params.append(args["category_filter"])
    where_sql = " AND ".join(where)

    select_group = f"{group_col} AS {args['group_by']}, " if group_col else ""
    group_clause = f", {group_col}" if group_col else ""

    rank_limit = args.get("rank_limit")
    rank_direction = args.get("rank_direction")

    if rank_limit is not None or rank_direction is not None:
        # Same fix, same reason, as build_compare_periods' rank_limit path:
        # without this, "trend for our worst-performing products" would
        # silently trend EVERY product and just happen to show some of them
        # in the preview — not actually restricted to the worst ones. Here
        # there's only one date range (not period_a/period_b), so entities
        # are ranked by their total metric across that whole range, then
        # only that fixed top/bottom-N cohort is trended over time.
        if not group_col:
            raise TemplateArgumentError(
                "rank_limit/rank_direction require group_by to be set — ranking needs a dimension to rank by."
            )
        if rank_limit is None or rank_direction is None:
            raise TemplateArgumentError("rank_limit and rank_direction must be provided together.")
        try:
            rank_limit = int(rank_limit)
        except (TypeError, ValueError):
            raise TemplateArgumentError("rank_limit must be an integer.")
        if rank_limit <= 0 or rank_limit > 100:
            raise TemplateArgumentError("rank_limit must be between 1 and 100.")
        if rank_direction not in ("top", "bottom"):
            raise TemplateArgumentError(f"Unknown rank_direction '{rank_direction}'. Valid: top, bottom")
        rank_order = "DESC" if rank_direction == "top" else "ASC"

        sql = (
            f"WITH ranked_entities AS ("
            f"SELECT {group_col} AS entity, {metric_sql} AS rank_metric "
            f"FROM analyst.v_order_line_revenue "
            f"WHERE {where_sql} "
            f"GROUP BY {group_col} "
            f"ORDER BY rank_metric {rank_order} "
            f"LIMIT %s) "
            f"SELECT date_trunc('{granularity}', order_date)::date AS period, {select_group}{metric_sql} AS {args['metric']} "
            f"FROM analyst.v_order_line_revenue "
            f"WHERE {where_sql} AND {group_col} IN (SELECT entity FROM ranked_entities) "
            f"GROUP BY date_trunc('{granularity}', order_date){group_clause} "
            f"ORDER BY period"
        )
        # where_sql's placeholders appear twice in the final SQL text (once
        # in the ranking CTE, once in the main trended query) — params must
        # be supplied twice to match, with the CTE's LIMIT placeholder
        # sandwiched in between, in the same order it appears in the SQL.
        return sql, list(params) + [rank_limit] + list(params)

    sql = (
        f"SELECT date_trunc('{granularity}', order_date)::date AS period, {select_group}{metric_sql} AS {args['metric']} "
        f"FROM analyst.v_order_line_revenue "
        f"WHERE {where_sql} "
        f"GROUP BY date_trunc('{granularity}', order_date){group_clause} "
        f"ORDER BY period"
    )
    return sql, params


def build_filter_and_aggregate(args: dict):
    metric_sql = _metric_expr(args["metric"])
    group_col = _group_col(args.get("group_by"))

    where, params = ["status = 'completed'", "order_date BETWEEN %s AND %s"], [args["start_date"], args["end_date"]]
    if args.get("region_filter"):
        where.append("region_name = %s")
        params.append(args["region_filter"])
    if args.get("category_filter"):
        where.append("category_name = %s")
        params.append(args["category_filter"])

    if group_col:
        sql = (
            f"SELECT {group_col} AS {args['group_by']}, {metric_sql} AS {args['metric']} "
            f"FROM analyst.v_order_line_revenue WHERE {' AND '.join(where)} "
            f"GROUP BY {group_col} ORDER BY {args['metric']} DESC"
        )
    else:
        sql = f"SELECT {metric_sql} AS {args['metric']} FROM analyst.v_order_line_revenue WHERE {' AND '.join(where)}"
    return sql, params


BUILDERS = {
    "get_top_n": build_get_top_n,
    "compare_periods": build_compare_periods,
    "trend_by_period": build_trend_by_period,
    "filter_and_aggregate": build_filter_and_aggregate,
}


def build_sql(tool_name: str, args: dict):
    if tool_name not in BUILDERS:
        raise TemplateArgumentError(f"No template builder for tool '{tool_name}'")
    return BUILDERS[tool_name](args)

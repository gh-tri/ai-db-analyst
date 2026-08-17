"""Static SQL validation — security layer #2 of 4 (design doc §7), and the one
that matters most for the raw_sql fallback path, since that's the only place
the model writes free-text SQL instead of filling in a typed template.

Every check here runs BEFORE the query ever reaches the database. Layer #4
(app/db.py connecting as a SELECT-only role) is what still stops a bypass of
this layer, but this layer is what turns "the DB user couldn't do it anyway"
into "we caught it immediately and can explain why," which is what makes the
security story demoable rather than just theoretically true.
"""
import sqlglot
from sqlglot import exp

from .. import config

ALLOWED_SCHEMA = config.DB_SCHEMA

DISALLOWED_EXPRESSION_TYPES = (
    exp.Insert, exp.Update, exp.Delete, exp.Drop, exp.AlterTable, exp.Create,
    exp.TruncateTable, exp.Merge, exp.Command,
)
# exp.Command is sqlglot's catch-all for statements it doesn't have a specific
# node for (GRANT, REVOKE, VACUUM, COPY, etc.) — rejecting it means anything
# sqlglot can't specifically classify as a known-safe SELECT is rejected by
# default (fail closed), rather than only rejecting a hand-enumerated list of
# known-dangerous statement types (fail open).


class SQLValidationError(ValueError):
    """Raised for any validation failure. The message is written to be safe
    and useful to show directly to an end user or feed back to the model for
    self-correction — never a raw parser stack trace."""


def _extract_tables(tree) -> set[str]:
    # CTE names (e.g. `WITH ranked_entities AS (...)`, used by the
    # rank_limit/rank_direction path in query_templates.build_compare_periods)
    # parse as ordinary exp.Table nodes wherever they're referenced in a FROM
    # clause — sqlglot doesn't semantically distinguish "a locally-defined
    # CTE" from "a real table" at this level, it's purely syntactic. Without
    # excluding them here, every ranked compare_periods query would fail
    # its own validation for referencing an "unknown table" that's actually
    # just its own WITH-clause alias, not a real table at all.
    cte_names = {cte.alias_or_name for cte in tree.find_all(exp.CTE)}
    return {t.name for t in tree.find_all(exp.Table) if t.name not in cte_names}


def _parse_single_statement(sql: str):
    if ";" in sql:
        raise SQLValidationError(
            "Only a single SQL statement is allowed (statement chaining via ';' was detected)."
        )
    try:
        statements = sqlglot.parse(sql, read="postgres")
    except Exception as e:
        raise SQLValidationError(f"The generated SQL didn't parse: {e}")

    if len(statements) != 1 or statements[0] is None:
        raise SQLValidationError("Expected exactly one SQL statement.")
    return statements[0]


def _check_ast_safety(tree, allowed_tables: set[str]):
    if not isinstance(tree, (exp.Select, exp.Union)):
        raise SQLValidationError(
            f"Only SELECT queries are allowed; got a {type(tree).__name__} statement."
        )

    for node in tree.walk():
        node_obj = node[0] if isinstance(node, tuple) else node
        if isinstance(node_obj, DISALLOWED_EXPRESSION_TYPES):
            raise SQLValidationError(
                f"Query contains a disallowed operation ({type(node_obj).__name__}). "
                "Only read-only SELECT queries are permitted."
            )

    referenced_tables = _extract_tables(tree)
    unknown = {t for t in referenced_tables if t.lower() not in allowed_tables}
    if unknown:
        raise SQLValidationError(
            f"Query references unknown table(s): {sorted(unknown)}. "
            f"Allowed tables/views: {sorted(allowed_tables)}."
        )


def validate_sql(sql: str, allowed_tables: set[str], max_rows: int) -> str:
    """For the raw_sql fallback path: the model writes complete, literal SQL
    text (no bound-parameter placeholders). Validates it and returns a
    (possibly rewritten, with LIMIT injected) safe version. Raises
    SQLValidationError on any violation."""
    sql = sql.strip().rstrip(";")
    tree = _parse_single_statement(sql)
    _check_ast_safety(tree, allowed_tables)

    # Auto-inject LIMIT if the model omitted one, so a runaway un-aggregated
    # SELECT can't return unbounded rows. Deliberately inject max_rows + 1,
    # not max_rows: db.run_select() already fetches max_rows + 1 rows and
    # flags `truncated=True` when it gets more than max_rows back — but that
    # detection only works if the query is actually capable of returning
    # max_rows + 1 in the first place. Injecting a bare `LIMIT max_rows` here
    # meant the query itself silently capped results at exactly max_rows, so
    # truncation could never be detected or surfaced as a caveat — a result
    # that was actually cut off looked identical to one that legitimately had
    # exactly max_rows rows. The extra +1 row is trimmed back off in
    # db.run_select before it ever reaches the user.
    existing_limit = tree.args.get("limit")
    if existing_limit is None:
        tree = tree.limit(max_rows + 1)
    else:
        try:
            limit_val = int(existing_limit.expression.this)
            if limit_val > max_rows:
                tree = tree.limit(max_rows + 1)
        except Exception:
            tree = tree.limit(max_rows + 1)

    return tree.sql(dialect="postgres")


def validate_template_sql(sql: str, allowed_tables: set[str]) -> None:
    """For SQL produced by our own parameterized template builders
    (query_templates.py) — already safe by construction (fixed identifiers
    from a Python whitelist; values passed separately as bound psycopg2
    params, never string-interpolated). This is a redundant safety net, not
    the primary control: it re-parses the statement shape to confirm it's
    still a plain SELECT with no disallowed operations and no unexpected
    tables, in case a future template builder is added carelessly.

    The SQL contains psycopg2 '%s' bound-parameter placeholders, which are
    not valid standalone SQL syntax, so they're substituted with the literal
    NULL for parsing purposes only. This function validates and returns
    nothing on success (raises on failure) — unlike validate_sql, it does NOT
    rewrite/return new SQL, because doing so would emit 'NULL' in place of the
    placeholders and break execution. The original, unmodified %s-parameterized
    SQL string is what actually gets executed, with its params list, via
    db.run_select."""
    sql_stripped = sql.strip().rstrip(";")
    parseable = sql_stripped.replace("%s", "NULL")
    tree = _parse_single_statement(parseable)
    _check_ast_safety(tree, allowed_tables)

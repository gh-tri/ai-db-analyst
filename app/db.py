"""All access to the business database goes through this module, and only
through this module — nothing else in the app opens a psycopg2 connection.
That's deliberate: it means every safety control (read-only role, statement
timeout, row cap, EXPLAIN cost guard) is enforced in exactly one place and
can't be bypassed by a new code path forgetting to apply it.
"""
import decimal
import time
import psycopg2
import psycopg2.extras

from . import config


def _jsonable_row(row: dict) -> dict:
    """psycopg2 returns SQL NUMERIC columns as decimal.Decimal, which is not
    JSON-native. Left alone, Decimal survives all the way to the API response,
    where Pydantic's JSON encoder silently stringifies it (e.g. 161.25 becomes
    the JSON string "161.25", not the number 161.25) to avoid precision loss —
    correct for Pydantic's purposes, but it meant every numeric column in
    data_preview arrived at the UI as a string. That broke the UI's chart
    rendering (it detects numeric columns via pandas dtype) with no exception
    anywhere, since a string column is a perfectly valid, silently-wrong
    DataFrame column. Converting here, once, at the DB boundary, means every
    downstream consumer (grounding check, interpretation, API response, UI)
    sees plain floats/ints consistently instead of each needing its own
    Decimal-awareness.
    """
    return {k: (float(v) if isinstance(v, decimal.Decimal) else v) for k, v in row.items()}


class QueryExecutionError(Exception):
    """Raised when a query fails at the database. Carries the raw DB error
    message so the self-correction loop can feed it back to the model."""

    def __init__(self, message, sql=None, params=None):
        super().__init__(message)
        self.sql = sql
        self.params = params


class QueryTooExpensiveError(Exception):
    """Raised by the EXPLAIN cost guard before a query is ever actually run."""
    pass


def _connect():
    conn = psycopg2.connect(
        host=config.DB_HOST,
        port=config.DB_PORT,
        dbname=config.DB_NAME,
        user=config.DB_READONLY_USER,
        password=config.DB_READONLY_PASSWORD,
    )
    # Belt-and-braces: these are also set at the role level in db/roles.sql,
    # but setting them again per-session means the guarantee holds even if
    # someone provisions a differently-configured role later.
    conn.set_session(readonly=True, autocommit=True)
    with conn.cursor() as cur:
        cur.execute(f"SET search_path TO {config.DB_SCHEMA}")
        cur.execute(f"SET statement_timeout = {config.DB_STATEMENT_TIMEOUT_MS}")
    return conn


def explain_cost(sql: str, params: tuple | list | None = None) -> float:
    """Runs EXPLAIN (not EXECUTE) to get the planner's estimated total cost
    without actually running the query. Used as a pre-execution guard against
    obviously-runaway plans (e.g. an accidental cartesian product from a
    missing join condition)."""
    conn = _connect()
    try:
        with conn.cursor() as cur:
            cur.execute(f"EXPLAIN (FORMAT JSON) {sql}", params or [])
            plan = cur.fetchone()[0]
            return plan[0]["Plan"]["Total Cost"]
    except psycopg2.Error as e:
        raise QueryExecutionError(str(e).strip(), sql=sql, params=params)
    finally:
        conn.close()


def run_select(sql: str, params: tuple | list | None = None, max_rows: int | None = None):
    """Executes a SELECT (only) query against the read-only role and returns
    (columns, rows, elapsed_ms). Raises QueryExecutionError on any DB error —
    callers (the self-correction loop) are expected to catch this and retry
    with the model, not let it bubble to the user as a stack trace.

    NOTE: this function does not itself re-validate that the SQL is a SELECT —
    that happens earlier, in app/pipeline/validate.py, using a proper SQL
    parser (sqlglot). This function is the last of four independent security
    layers (see design doc §7): even if validation were skipped entirely, the
    connection itself is opened read-only against a SELECT-only DB role, so a
    write statement would be rejected by Postgres itself at this point.
    """
    max_rows = max_rows or config.DB_MAX_ROWS
    # Deliberately None, not [], when there are no params — passing psycopg2
    # even an empty list still puts it in "substitute %s placeholders" mode,
    # which then errors on any literal '%' in the SQL text that isn't a
    # placeholder (e.g. inside a raw_sql fallback query). None means "no
    # substitution at all," which is what "no params" should actually mean.
    params = params or None
    conn = _connect()
    start = time.monotonic()
    try:
        with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
            # mogrify renders the exact final SQL text psycopg2 would send to
            # the server, with parameters safely substituted in — this is
            # purely for DISPLAY/explainability and for what gets fed to the
            # interpretation step (design doc's "show the query used"
            # requirement); it does NOT change how the query actually runs.
            # Execution below still goes through cur.execute(sql, params),
            # i.e. real server-side parameter binding — mogrify never touches
            # that, so this adds no injection surface.
            resolved_sql = cur.mogrify(sql, params).decode()
            cur.execute(sql, params)
            columns = [d.name for d in cur.description] if cur.description else []
            rows = cur.fetchmany(max_rows + 1)
            truncated = len(rows) > max_rows
            rows = rows[:max_rows]
            elapsed_ms = (time.monotonic() - start) * 1000
            return {
                "columns": columns,
                "rows": [_jsonable_row(dict(r)) for r in rows],
                "row_count": len(rows),
                "truncated": truncated,
                "elapsed_ms": round(elapsed_ms, 1),
                "resolved_sql": resolved_sql,
            }
    except psycopg2.Error as e:
        raise QueryExecutionError(str(e).strip(), sql=sql, params=params)
    finally:
        conn.close()


def introspect_schema():
    """Live introspection of the analyst schema via information_schema — the
    source of truth for what tables/columns/types actually exist. This is
    what makes the schema context given to the LLM impossible to drift out of
    sync with reality (see design doc §5.3 / app/schema_provider.py)."""
    conn = _connect()
    try:
        with conn.cursor() as cur:
            cur.execute(
                """
                SELECT table_name, column_name, data_type, is_nullable
                FROM information_schema.columns
                WHERE table_schema = %s
                ORDER BY table_name,
                         CASE WHEN table_name = 'v_order_line_revenue' THEN 1 ELSE 0 END,
                         ordinal_position
                """,
                (config.DB_SCHEMA,),
            )
            tables = {}
            for table_name, column_name, data_type, is_nullable in cur.fetchall():
                tables.setdefault(table_name, []).append(
                    {"column": column_name, "type": data_type, "nullable": is_nullable == "YES"}
                )

            cur.execute(
                """
                SELECT
                    tc.table_name AS from_table, kcu.column_name AS from_column,
                    ccu.table_name AS to_table, ccu.column_name AS to_column
                FROM information_schema.table_constraints tc
                JOIN information_schema.key_column_usage kcu ON tc.constraint_name = kcu.constraint_name
                JOIN information_schema.constraint_column_usage ccu ON tc.constraint_name = ccu.constraint_name
                WHERE tc.constraint_type = 'FOREIGN KEY' AND tc.table_schema = %s
                """,
                (config.DB_SCHEMA,),
            )
            fks = [
                {"from": f"{r[0]}.{r[1]}", "to": f"{r[2]}.{r[3]}"} for r in cur.fetchall()
            ]
            return {"tables": tables, "foreign_keys": fks}
    finally:
        conn.close()

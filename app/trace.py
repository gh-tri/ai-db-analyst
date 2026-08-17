"""Structured trace logging — the "observability" optional enhancement, and
also the raw data the eval harness (eval/run_eval.py) reads back.

Deliberately stored in a local SQLite file, NOT in the business Postgres
database — app-internal metadata (traces, later: cache, session persistence)
should never share a database/role with the read-only business-data path. See
design doc's db.py comment and config.py for the same separation.
"""
import json
import sqlite3
import time
import uuid
from contextlib import contextmanager

from . import config


def _connect():
    conn = sqlite3.connect(config.APP_DATA_DB_PATH)
    conn.execute(
        """
        CREATE TABLE IF NOT EXISTS trace (
            trace_id TEXT PRIMARY KEY,
            session_id TEXT,
            created_at REAL,
            user_message TEXT,
            resolved_question TEXT,
            intent TEXT,
            tool TEXT,
            args_json TEXT,
            sql_used TEXT,
            validation_outcome TEXT,
            retries INTEGER,
            db_error TEXT,
            row_count INTEGER,
            elapsed_ms REAL,
            answer TEXT,
            status TEXT,
            error_category TEXT
        )
        """
    )
    return conn


class Trace:
    """One Trace instance per pipeline run (one user turn). Call .log() at the
    end with whatever fields are known — earlier fields are fine to leave
    unset if the pipeline short-circuited (e.g. refused before generating a
    query)."""

    def __init__(self, session_id: str, user_message: str):
        self.trace_id = str(uuid.uuid4())
        self.session_id = session_id
        self.user_message = user_message
        self.started_at = time.monotonic()
        self.fields = {}

    def set(self, **kwargs):
        self.fields.update(kwargs)

    def log(self, status: str, error_category: str | None = None):
        elapsed_ms = (time.monotonic() - self.started_at) * 1000
        conn = _connect()
        with conn:
            conn.execute(
                """INSERT INTO trace (trace_id, session_id, created_at, user_message, resolved_question,
                   intent, tool, args_json, sql_used, validation_outcome, retries, db_error, row_count,
                   elapsed_ms, answer, status, error_category)
                   VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)""",
                (
                    self.trace_id, self.session_id, time.time(), self.user_message,
                    self.fields.get("resolved_question"), self.fields.get("intent"),
                    self.fields.get("tool"), json.dumps(self.fields.get("args")) if self.fields.get("args") else None,
                    self.fields.get("sql_used"), self.fields.get("validation_outcome"),
                    self.fields.get("retries", 0), self.fields.get("db_error"),
                    self.fields.get("row_count"), round(elapsed_ms, 1),
                    self.fields.get("answer"), status, error_category,
                ),
            )
        conn.close()
        return self.trace_id


def recent_traces(limit: int = 50):
    conn = _connect()
    conn.row_factory = sqlite3.Row
    rows = conn.execute("SELECT * FROM trace ORDER BY created_at DESC LIMIT ?", (limit,)).fetchall()
    conn.close()
    return [dict(r) for r in rows]

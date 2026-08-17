"""Central configuration. Everything that varies between dev/demo/prod lives here,
read from environment variables with sane defaults for local development.
"""
import os
from dotenv import load_dotenv

# Loads .env (if present) into the process environment BEFORE anything below
# reads os.environ — without this, a .env file sits there correctly filled in
# and is simply never seen by the app, which is a real bug this project hit
# during setup: OPENAI_API_KEY looked configured but the app kept silently
# falling back to mock mode. load_dotenv() never overrides a variable that's
# already set in the real environment (e.g. exported in your shell), so this
# is safe to call unconditionally.
load_dotenv()

# --- Database -----------------------------------------------------------
# The application NEVER connects as the schema owner. It always connects as
# app_readonly (see db/roles.sql) — a role with SELECT-only grants. This is
# security layer #4 from the design doc: even a bug in every layer above still
# can't write to the database, because the DB user physically can't.
DB_HOST = os.environ.get("DB_HOST", "localhost")
DB_PORT = os.environ.get("DB_PORT", "5432")
DB_NAME = os.environ.get("DB_NAME", "ai_db_analyst")
DB_READONLY_USER = os.environ.get("DB_READONLY_USER", "app_readonly")
DB_READONLY_PASSWORD = os.environ.get("DB_READONLY_PASSWORD", "readonly_dev_password")
DB_SCHEMA = os.environ.get("DB_SCHEMA", "analyst")

DB_STATEMENT_TIMEOUT_MS = int(os.environ.get("DB_STATEMENT_TIMEOUT_MS", "5000"))
DB_MAX_ROWS = int(os.environ.get("DB_MAX_ROWS", "500"))  # hard cap on rows returned to the LLM/UI

# --- App-internal storage (trace logs, eval results, conversation memory) --
# Deliberately SEPARATE from the business database above. The app needs to
# write logs and session state somewhere, but that must never be the same
# database/role the LLM's queries run against — otherwise "read-only" would
# only be a convention, not a guarantee. This is a local SQLite file.
APP_DATA_DB_PATH = os.environ.get("APP_DATA_DB_PATH", os.path.join(os.path.dirname(__file__), "..", "app_data.sqlite3"))

# --- LLM (OpenAI) ---------------------------------------------------------
OPENAI_API_KEY = os.environ.get("OPENAI_API_KEY", "")

# Model tiering (design doc §9 / §11): cheap model for the frequent, low-
# complexity steps (routing, follow-up rewriting); the stronger model only for
# the steps where reasoning quality determines correctness (query generation,
# result interpretation).
MODEL_CHEAP = os.environ.get("MODEL_CHEAP", "gpt-4o-mini")
MODEL_STRONG = os.environ.get("MODEL_STRONG", "gpt-4o")

# If no API key is configured, the app runs in mock mode: a deterministic,
# rule-based stand-in for the LLM so the full pipeline (router -> validation ->
# execution -> grounding) can be exercised and demoed without an API key or
# API cost. This is what this session used to smoke-test the pipeline. Real
# demos should set OPENAI_API_KEY.
USE_MOCK_LLM = os.environ.get("USE_MOCK_LLM", "" if OPENAI_API_KEY else "1") == "1"

# --- Pipeline behavior -----------------------------------------------------
MAX_SELF_CORRECTION_RETRIES = int(os.environ.get("MAX_SELF_CORRECTION_RETRIES", "2"))
MAX_CONVERSATION_TURNS_REMEMBERED = int(os.environ.get("MAX_CONVERSATION_TURNS_REMEMBERED", "6"))

# Bounded agentic drill-down (design doc §4/§10): after a successful
# comparison/trend query that's already broken down by one dimension, the
# model gets ONE chance to look at the result and decide whether a second
# breakdown (by a different dimension, same time periods) would sharpen the
# explanation — a genuine observe -> decide -> act step, not a fixed
# hard-coded second query. Deliberately capped at 1, not unbounded: this is a
# small, targeted planning step, not a general agent loop, so it can't run
# away in cost or latency. See app/pipeline/orchestrator.py "Stage 7.5".
MAX_ANALYSIS_DRILLDOWN_STEPS = int(os.environ.get("MAX_ANALYSIS_DRILLDOWN_STEPS", "1"))

# Paths to the semantic layer files described in design doc §5.2/§5.3.
_THIS_DIR = os.path.dirname(os.path.abspath(__file__))
BUSINESS_GLOSSARY_PATH = os.path.join(_THIS_DIR, "..", "db", "business_glossary.yaml")
SCHEMA_DESCRIPTIONS_PATH = os.path.join(_THIS_DIR, "..", "db", "schema_descriptions.yaml")

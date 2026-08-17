#!/usr/bin/env bash
# Convenience setup script for Debian/Ubuntu Linux with Postgres already
# installed (this is how the prototype was built and verified). On macOS,
# follow the manual steps in README.md's "Setup" section instead (Homebrew's
# Postgres service management differs from pg_ctlcluster).
set -euo pipefail

cd "$(dirname "$0")"

echo "==> Setting up Python environment with uv"
if ! command -v uv >/dev/null 2>&1; then
    echo "uv not found — installing it (see https://docs.astral.sh/uv/ for other install methods)"
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.local/bin:$PATH"
fi
uv sync
source .venv/bin/activate

echo "==> Ensuring Postgres is running"
if command -v pg_lsclusters >/dev/null 2>&1; then
    if ! pg_lsclusters | grep -q online; then
        sudo pg_ctlcluster "$(pg_lsclusters | tail -1 | awk '{print $1}')" main start
    fi
fi

echo "==> Creating database and schema"
sudo -u postgres psql -c "DROP DATABASE IF EXISTS ai_db_analyst;"
sudo -u postgres psql -c "CREATE DATABASE ai_db_analyst;"
sudo -u postgres psql -d ai_db_analyst -f db/schema.sql
sudo -u postgres psql -d ai_db_analyst -f db/roles.sql

echo "==> Loading data (from the pre-generated snapshot, a few seconds)"
sudo -u postgres psql -d ai_db_analyst -f db/seed_data.sql

echo "==> Done."
echo "Next steps:"
echo "  1. cp .env.example .env and set OPENAI_API_KEY"
echo "  2. source .venv/bin/activate"
echo "  3. Terminal 1: uvicorn api.main:app --reload"
echo "  4. Terminal 2: streamlit run ui/streamlit_app.py"
echo "  5. Optional:   python3 eval/run_eval.py"

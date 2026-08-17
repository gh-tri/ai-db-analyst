"""FastAPI backend. Thin HTTP wrapper around app.pipeline.orchestrator — all
the actual logic lives there so it stays testable without spinning up a
server (see tests/smoke_test.py and eval/run_eval.py, which both call the
orchestrator directly).
"""
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel

from app.pipeline.orchestrator import handle_message
from app import trace as trace_module

app = FastAPI(title="AI Database Analyst", version="0.1.0")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # fine for a local prototype demo; scope this down for real deployment
    allow_methods=["*"],
    allow_headers=["*"],
)


class ChatRequest(BaseModel):
    session_id: str
    message: str


class ChatResponse(BaseModel):
    type: str
    answer: str
    explanation: str | None = None
    assumptions: list[str] = []
    caveats: list[str] = []
    sql_used: str | None = None
    additional_queries: list[dict] | None = None
    analysis_review: dict | None = None
    data_preview: list[dict] | None = None
    row_count: int | None = None
    tool_used: str | None = None
    retries_used: int | None = None
    grounded: bool | None = None  # None = not applicable (refusal/clarification/chitchat/error, not an "answer")


@app.get("/health")
def health():
    return {"status": "ok"}


@app.post("/chat", response_model=ChatResponse)
def chat(req: ChatRequest):
    result = handle_message(req.session_id, req.message)
    return result


@app.get("/traces")
def traces(limit: int = 50):
    """Debug/observability endpoint — recent pipeline runs with full detail
    (question, resolved question, tool used, SQL, timing, outcome). Not
    something an end user would call; useful for the demo's "here's what's
    happening under the hood" moment and for eyeballing the eval run."""
    return trace_module.recent_traces(limit)


if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)

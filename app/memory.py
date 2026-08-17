"""Conversation memory — structured state, not raw transcript replay.

Design doc §5.4: we keep a small structured object per session (last resolved
question, last SQL, the dimension/filters/time-range involved, a short result
summary) instead of replaying the full chat history into every prompt. This
keeps per-turn token cost flat instead of growing with conversation length,
and makes follow-up resolution a small, targeted rewrite instead of asking the
model to re-infer context from an ever-growing transcript.

In-process dict for the prototype — the store is accessed through this module
only, so swapping to Redis for multi-instance deployment (design doc §8) means
changing the implementation of this one class, nothing that calls it.
"""
import threading

from . import config


class SessionStore:
    def __init__(self):
        self._lock = threading.Lock()
        self._sessions: dict[str, dict] = {}

    def get(self, session_id: str) -> dict:
        with self._lock:
            return self._sessions.get(session_id, {"turns": [], "last_context": None})

    def record_turn(self, session_id: str, *, user_message: str, resolved_question: str,
                     tool: str | None, args: dict | None, sql: str | None,
                     result_summary: dict | None, answer: str | None):
        with self._lock:
            session = self._sessions.setdefault(session_id, {"turns": [], "last_context": None})
            session["turns"].append({
                "user_message": user_message,
                "resolved_question": resolved_question,
                "answer": answer,
            })
            session["turns"] = session["turns"][-config.MAX_CONVERSATION_TURNS_REMEMBERED:]
            if tool is not None:
                session["last_context"] = {
                    "resolved_question": resolved_question,
                    "tool": tool,
                    "args": args,
                    "sql": sql,
                    "result_summary": result_summary,
                }

    def clear(self, session_id: str):
        with self._lock:
            self._sessions.pop(session_id, None)


_store = SessionStore()


def get_session_store() -> SessionStore:
    return _store

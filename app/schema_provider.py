"""Schema + semantic-layer context for prompts.

Design doc §5.3: at this table count (7 tables + 1 view), the full schema fits
comfortably in a prompt, so retrieval would add latency and a real failure mode
(missing a needed join because it didn't score high enough in similarity
search) for no accuracy benefit. So: static full-schema injection for now.

The interface is deliberately shaped so a RAG-based implementation is a
drop-in replacement later (design doc §8): `get_context(question)` already
takes the question as an argument, even though this implementation ignores it
and returns everything. A future `EmbeddingSchemaProvider` with the same
`get_context(question) -> str` signature, backed by pgvector, would need zero
changes anywhere else in the pipeline.
"""
import functools
import yaml

from . import config
from . import db


class SchemaProvider:
    def get_context(self, question: str) -> str:
        raise NotImplementedError


class StaticSchemaProvider(SchemaProvider):
    """Full schema + business glossary, injected in full on every call.
    Cached after first load — the schema doesn't change during a demo run."""

    def __init__(self):
        self._cached_context = None

    @functools.lru_cache(maxsize=1)
    def _build_context(self) -> str:
        schema = db.introspect_schema()

        with open(config.SCHEMA_DESCRIPTIONS_PATH) as f:
            descriptions = yaml.safe_load(f)["tables"]

        with open(config.BUSINESS_GLOSSARY_PATH) as f:
            glossary = yaml.safe_load(f)

        lines = ["## DATABASE SCHEMA (live-introspected — always accurate)\n"]
        for table_name, columns in schema["tables"].items():
            desc = descriptions.get(table_name, {}).get("description", "")
            lines.append(f"### {table_name}" + (f" — {desc}" if desc else ""))
            for c in columns:
                nullable = "" if c["nullable"] else " NOT NULL"
                lines.append(f"  - {c['column']} ({c['type']}){nullable}")
            lines.append("")

        lines.append("### Foreign keys")
        for fk in schema["foreign_keys"]:
            lines.append(f"  - {fk['from']} -> {fk['to']}")
        lines.append("")

        lines.append("## BUSINESS GLOSSARY (authoritative — do not invent alternative definitions)\n")
        lines.append(f"Reference date ('today' for this dataset): {glossary['reference_date']['as_of']}")
        lines.append(glossary['reference_date']['note'].strip())
        lines.append("")

        lines.append("Metrics:")
        for name, m in glossary["metrics"].items():
            lines.append(f"  - {name}: {m['definition']}")
            if m.get("formula"):
                lines.append(f"      formula: {m['formula']}")
            if m.get("notes"):
                lines.append(f"      notes: {m['notes'].strip()}")
        lines.append("")

        lines.append("Ambiguous terms and default interpretations:")
        for name, a in glossary["ambiguous_terms"].items():
            lines.append(f"  - '{name}': default = {a['default_interpretation']}. {a.get('note', '').strip()}")
        lines.append("")

        lines.append("Dimensional hierarchies:")
        for name, d in glossary["dimensions"].items():
            lines.append(f"  - {name}: {d}")
        lines.append("")

        lines.append("Explicitly unsupported (refuse these, do not attempt):")
        for item in glossary["unsupported"]:
            lines.append(f"  - {item}")

        return "\n".join(lines)

    def get_context(self, question: str) -> str:
        return self._build_context()


@functools.lru_cache(maxsize=1)
def get_reference_date_note() -> str:
    """A short, standalone grounding note for pipeline stages that need to
    know the dataset's date range but don't need (or shouldn't pay for) the
    full schema context — currently the intent router (llm.py's
    classify_intent). Pulled from the same business_glossary.yaml reference
    date as the query-generation context, so there's one source of truth.

    Why this exists: without it, the router LLM has no way to know this
    dataset's "2025" is real historical business data, not a future date —
    and a model will readily reach for its own training-data cutoff instead,
    misclassifying any in-range-but-recent-sounding year as out_of_scope.
    That's a real failure mode this project hit during testing, not a
    hypothetical one; see docs/design_decisions.md for how it was diagnosed."""
    with open(config.BUSINESS_GLOSSARY_PATH) as f:
        glossary = yaml.safe_load(f)
    as_of = glossary["reference_date"]["as_of"]
    return (
        f"This assistant answers by querying a LIVE DATABASE of historical business records, not from "
        f"your own training knowledge. The database's data runs through {as_of} (treat that as 'today' "
        f"for this business, regardless of the real current date or your training cutoff). Any date up "
        f"to and including {as_of} is already-recorded historical data sitting in the database — never "
        f"refuse or classify a question as out of scope on the grounds that a year 'hasn't happened yet' "
        f"or is 'beyond your training data'; the database is the source of truth here, not your memory."
    )


_provider = None


def get_schema_provider() -> SchemaProvider:
    global _provider
    if _provider is None:
        _provider = StaticSchemaProvider()
    return _provider

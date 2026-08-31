# Project Overview: Analytics Engineering — Advanced SQL, Data Modeling & dbt

## The objective

Build a real, working, tested, and documented **dbt project** against
your own **Module 3** PostgreSQL database — not a new domain, the same
one you built and loaded data into then.

A real staging layer that only cleans raw source tables. Real
cross-table joins living in the **intermediate** layer, not just the
marts. **At least two mart tables at two genuinely different grains**,
each answering a real business question from your own domain's Module 3
`SCENARIOS.md` entry — the ones you already answered once with ad-hoc
SQL, now built as the properly tested, documented, layered version.

≥3 dbt tests that would genuinely catch a realistic data break. One
centrally-defined semantic metric. A real, measured `EXPLAIN ANALYZE`
before/after query optimization. A lineage-documented data dictionary
generated via `dbt docs generate`.

## Why it matters

This is the first time in the program a formal testing/documentation
tool forces the rigor you could informally skip before — `schema.yml`
tests are a real, checkable claim about your data, not just a comment.
Layering staging/intermediate/mart correctly, and being able to trace a
mart column all the way back to its raw source, is exactly the skill
that separates "a query that happens to work" from a real analytics-
engineering deliverable a team can actually build on. **Module 8**
builds a real ETL/orchestration pipeline that assumes this same
layered-modeling instinct.

## Deliverables at a glance

- A working `dbt project/` reconnected to your own Module 3 database.
- Staging models that only clean (no joins, no business logic) — one per
  raw source table you actually use.
- At least one intermediate model with a real cross-table **join**, not
  just an intermediate-layer aggregation — the mart layer should stay
  thin on top of it.
- At least two mart tables, at two genuinely different real grains, each
  built at a clearly stated grain and answering a real business question
  from your own domain.
- `dbt run` and `dbt test` both completing successfully, ≥3 real tests —
  at least one demonstrated (in `required_components.md`) to genuinely
  fail when the data actually breaks.
- One centrally-defined, reused semantic metric.
- A real `EXPLAIN ANALYZE` before/after: a genuine bottleneck found, a
  real fix applied, a measured difference.
- `dbt docs generate` run for real; every mart column documented; a real
  lineage trace from a mart column back to its raw source.

## Skills you'll practice

- **SQL / Query Optimization** — reading a real `EXPLAIN ANALYZE` plan
  and fixing a real bottleneck, at analyze/evaluate depth beyond Module
  3's own first pass.
- **Data Modeling / Data Warehousing** — a real staging → intermediate →
  mart layering, real joins at the intermediate layer, two mart tables at
  two different grains built for BI-tool consumption, not a mirror of the
  OLTP schema.
- **Semantic Layer** — a metric defined once, centrally, reused instead
  of recalculated inconsistently.
- **dbt** — a real project structure, real tests, real docs generation.
- **Documentation / Data Lineage** — every mart column described, a real
  traced path from mart to raw source.

## Timeline

6 days, plus a required share-out session scheduled after. See
`CHECKLIST_TIMELINE.md` for the day-by-day sprint pace and the full
submission checklist.

## Where to start

Go to `README.md`, then `GETTING_STARTED.md` — setting up a **dedicated
virtual environment for dbt** (not your system/base Python — a real,
important step this module, not optional) and reconnecting to your own
Module 3 database.

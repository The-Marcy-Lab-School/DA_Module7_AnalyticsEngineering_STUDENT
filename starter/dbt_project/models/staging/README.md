# Staging

**Only cleaning happens here** — renaming columns to consistent
`snake_case`, type-casting, and null-handling (`coalesce`, `nullif`).
**No business logic, no joins across source tables, no aggregation.**
One staging model per raw source table you use (`stg_<table>.sql`),
each reading directly from a `source()` (declared in this folder's
`sources.yml`, which you'll create).

This is the exact bar `good_vs_bad_criteria` checks: "staging models do
only cleaning... business logic lives only in intermediate/mart models."
A staging model that joins two tables or computes a business metric is
graded as a `data-modeling` miss, not just a style nit.

Nothing is given here — these are your own tables, from your own Module
3 domain. See `../../../../GETTING_STARTED.md` for reconnecting to that
database.

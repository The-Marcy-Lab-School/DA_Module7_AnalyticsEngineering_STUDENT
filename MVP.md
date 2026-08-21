# MVP — the real bar for "done"

This is what actually gets graded as Meets/Approaching/Below per skill.
See instructor `rubric.md` for the full rubric if your instructor has
shared it — this is the same bar in checklist form.

## The dbt project

- [ ] `dbt run` and `dbt test` both complete successfully.
- [ ] Real staging/intermediate/marts layering — staging models do
      **only** cleaning (rename/type-cast/null-handle); business logic
      and joins live only in intermediate/mart models.
- [ ] At least one mart table, built at a clearly stated grain,
      answering a real business question from your own domain's Module 3
      `SCENARIOS.md` entry.
- [ ] **≥3 real `schema.yml` tests, all passing** — and at least one
      demonstrated (in `required_components.md`) to genuinely fail when
      you actually break the data on purpose, not just asserted to work.
- [ ] **One centrally-defined semantic metric**, reused rather than
      recalculated inconsistently anywhere it's needed.
- [ ] **A real, measured `EXPLAIN ANALYZE` before/after** — a genuine
      bottleneck identified in the original plan, a real index or
      rewrite applied, a real (even if small) measured difference.
- [ ] `dbt docs generate` run for real; every mart-layer column has a
      real, non-empty description; the generated lineage graph correctly
      renders.

## Written work

- [ ] `starter/required_components.md` — all 5 sections filled in for
      real, including the real broken-test output and the real
      before/after `EXPLAIN ANALYZE` output.
- [ ] `starter/data_dictionary.md` — a real, filled-in index of your
      models and metric.
- [ ] A real lineage trace: one mart column, followed back through every
      intermediate model to its raw source column, written out.

## What "Below" looks like, concretely

- All transformation logic crammed into one giant model instead of real
  staging/intermediate/mart layering (`common_project_mistakes` #1).
- A test that always passes regardless of the data — e.g. testing
  not-null on a column already guaranteed not-null by the source schema
  (`common_project_mistakes` #2).
- Never actually running `EXPLAIN ANALYZE` before *and* after an
  optimization to confirm it helped — just asserting it did
  (`common_project_mistakes` #3).
- Mart-layer columns left undocumented in `schema.yml`
  (`common_project_mistakes` #4).
- A lineage graph showing a mart column with no traceable path back to a
  real raw source.

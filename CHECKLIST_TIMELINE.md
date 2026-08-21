# Checklist & Timeline

**5 days, run as a sprint.** Real dbt work front-loads mechanics
(environment, layering discipline) before the payoff, so days 1-2 can
feel slow — that's real, expected setup cost, not you falling behind.

## Day 1 — Environment, reconnect, layering plan

- [ ] Dedicated venv set up, `dbt debug` passes for real ("All checks
      passed!", not hanging).
- [ ] Confirmed your Module 3 database is reachable.
- [ ] Picked which real business question(s) from your own domain's
      Module 3 `SCENARIOS.md` entry your mart will answer.
- [ ] Sketched (on paper/in `data_dictionary.md`) which raw tables need
      staging, and what real business logic belongs in intermediate.

## Day 2 — Staging models

- [ ] One staging model per raw source table you're using — cleaning
      only (rename, type-cast, null-handle). No joins, no business logic.
- [ ] `dbt run` succeeds on staging models.
- [ ] First real `schema.yml` tests written (not-null, unique) on your
      staging models.

## Day 3 — Intermediate + mart models

- [ ] Intermediate model(s) with the real cross-table business logic.
- [ ] Mart table built, at a clearly stated grain, answering your real
      business question.
- [ ] `dbt run` succeeds end-to-end.
- [ ] ≥3 real tests total; **break one on purpose, watch it genuinely
      fail, fix it back** — document the real failure output in
      `required_components.md`.

## Day 4 — Semantic metric + query optimization

- [ ] One centrally-defined semantic metric, reused (not recalculated
      elsewhere).
- [ ] The real `EXPLAIN ANALYZE` before/after — a genuine bottleneck
      found, a real fix (index or rewrite) applied, the real measured
      difference documented.

## Day 5 — Docs, lineage, finish, submit

- [ ] `dbt docs generate` run for real; every mart column has a real
      description.
- [ ] `dbt docs serve`, trace one real mart column back through the
      lineage graph to its raw source — write out the real path in
      `required_components.md`.
- [ ] `starter/data_dictionary.md` filled in for real.
- [ ] Commit and push.

## Submission checklist

- [ ] `dbt run` and `dbt test` both complete successfully.
- [ ] Staging/intermediate/marts layering respected — no business logic
      in staging.
- [ ] ≥3 real tests, ≥1 demonstrated genuinely failing on bad data.
- [ ] ≥1 semantic metric, centrally defined and reused.
- [ ] A real, measured `EXPLAIN ANALYZE` before/after.
- [ ] `dbt docs generate` output, every mart column documented, a real
      traced lineage path.
- [ ] `starter/required_components.md` and `starter/data_dictionary.md`
      filled in for real, not templated placeholders.

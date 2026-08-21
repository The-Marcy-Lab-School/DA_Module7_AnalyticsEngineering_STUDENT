# Required Components

Every one of these must be real and demonstrated — not asserted. Fill in
what you actually built/found for each section; this is graded alongside
the dbt project itself.

## 1. Layering (staging → intermediate → marts)

**Which raw tables did you stage, and what did each staging model
clean?** TODO

**What real business logic lives in your intermediate model(s), and why
doesn't it belong in staging?** TODO

**What does your mart table answer, and at what grain (one row per
what)?** TODO — name the real business question from your own domain's
Module 3 `SCENARIOS.md` entry that this mart answers.

## 2. Tests (≥3, each genuinely able to fail)

For each test, name it, and — for at least one — **actually break the
data on purpose** (a duplicate row, a null where you claimed not-null,
etc.), re-run `dbt test`, and paste the real failure output. Then fix it
back and confirm it passes again. A test you've never watched fail isn't
verified yet.

| Test | Model.Column | What it actually catches |
|---|---|---|
| TODO | TODO | TODO |
| TODO | TODO | TODO |
| TODO | TODO | TODO |

**The one you broke on purpose — real failure output:**

```
TODO — paste the real `dbt test` failure here
```

## 3. Semantic metric

**Your metric's name, formula, and what business question it answers:**
TODO

**Where else would this same number have been recalculated ad-hoc
without a semantic layer** (a real place in your project, or a real
place in a BI tool downstream, where this saves you from two different
"total revenue" numbers existing)? TODO

## 4. Query optimization (a real before/after `EXPLAIN ANALYZE`)

**The slow query (paste it):** TODO

**`EXPLAIN ANALYZE` output, before:** TODO — paste the real plan.
Identify the actual costliest operation (a `Seq Scan`? a nested loop
with a large row estimate?).

**What you changed (an index, or a rewrite), and why you expected it to
help:** TODO

**`EXPLAIN ANALYZE` output, after:** TODO — paste the real plan. Name
the real, measured difference — even a small one is fine, as long as
it's real and you can explain what changed in the plan (not just "it got
faster").

## 5. Documentation & lineage

**Confirm:** every mart-layer column has a real description in
`schema.yml` — not a restated column name.

**Lineage trace:** pick one real mart column. Using `dbt docs serve`'s
DAG view, trace it back through every intermediate model to its raw
source column. Write out the real path:

`mart.<column>` ← `intermediate.<model>.<column>` ← `staging.<model>.<column>`
← raw source `<table>.<column>`

TODO

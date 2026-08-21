# Data Dictionary

**This file is a pointer, not the real data dictionary.** Your real,
graded data dictionary is `dbt docs generate`'s own output — every
mart-layer column's description lives in `schema.yml` next to the model
it documents, and dbt renders all of it (plus the lineage graph) into a
real browsable site.

Once you've run `dbt docs generate` for real:

```bash
dbt docs generate
dbt docs serve
```

`dbt docs serve` opens a real local site — the lineage graph (the "DAG"
view) is what you'll use for the data-lineage exercise
(`required_components.md`'s Section 5): pick one mart column, and
literally click back through the graph to its raw source, screenshot or
narrate what you find.

**Fill in below** once your project is built — a short, human-readable
index of what's in your project, for someone who doesn't want to open
`dbt docs serve` first:

## Staging models

| Model | Source table | What it cleans |
|---|---|---|
| TODO | TODO | TODO |

## Intermediate models

| Model | Built from | What business logic it adds |
|---|---|---|
| TODO | TODO | TODO |

## Mart models

| Model | Grain (one row per...) | Business question(s) it answers |
|---|---|---|
| TODO | TODO | TODO |

## Semantic metric(s)

| Metric | Formula | Where it's defined |
|---|---|---|
| TODO | TODO | TODO |

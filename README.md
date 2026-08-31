# Analytics Engineering: Advanced SQL, Data Modeling & dbt Project

Start with `PROJECT_OVERVIEW.md` for what you're building and why. This
file (`README.md`) is where the step-by-step setup lives.

**Due:** 6 days, run as a sprint, plus a required share-out session
scheduled after. See `CHECKLIST_TIMELINE.md` for the
day-by-day pace and the full submission checklist.

This repo is a **GitHub template** — a starting point, not something you
edit directly on Marcy's copy of it.

## Getting started

### Step 1: Get your own copy

On this repo's GitHub page, click **"Use this template" → "Create a new
repository"** (not Fork — Fork keeps a visible link back to this template,
which isn't what you want for a portfolio project). Name it something
like `analytics-engineering-dbt`, keep it **public**, and create it.

### Step 2: Clone your new repo locally

```bash
git clone <the URL of your own new repo>
cd <your-repo-name>
```

### Step 3: Confirm your environment — the basics are already set up

Like Module 3/5/6, `.gitignore`, `LICENSE`, and a real git history are
already here — git itself isn't being newly tested this module:

```bash
ls -a          # should show .gitignore among the files
cat LICENSE    # should show the MIT License text
git log --oneline
```

**One real edit still needed:** open `LICENSE` and replace the placeholder
`[YOUR NAME]` on the copyright line with your actual name. Commit that
change alongside your other early commits.

### Step 4: Set up dbt in a dedicated virtual environment

See `GETTING_STARTED.md` — dbt is new this module and gets its own
dedicated setup walkthrough, including **why a dedicated virtual
environment matters here specifically**, not just as generic advice.

### Step 5: Reconnect to your Module 3 database

Also in `GETTING_STARTED.md` — the same database you built in Module 3
(and reconnected to again in Module 4), no new domain data this time.

## What to do

- `starter/dbt_project/` has the given project skeleton: `dbt_project.yml`
  (already configured), a `models/staging/`, `models/intermediate/`,
  `models/marts/` folder structure (each with a short README explaining
  that layer's real job), and `models/metricflow_time_spine.sql` (a
  given, mechanical file dbt's semantic-layer feature needs — not
  graded content).
- Fill in `starter/required_components.md` **as you build**, not after —
  it's the real record of what you actually did (including the test you
  broke on purpose and the real `EXPLAIN ANALYZE` before/after), not a
  final summary written from memory.
- Build staging models for your own raw Module 3 tables — cleaning only.
- Build ≥1 intermediate model with the real business logic (joins,
  cross-table calculations) that doesn't belong in staging.
- Build ≥1 mart table answering a real business question from your own
  domain's Module 3 `SCENARIOS.md` entry.
- Write ≥3 real `schema.yml` tests; verify at least one genuinely fails
  on bad data, not just that it passes on good data.
- Define ≥1 semantic metric, centrally, in `models/marts/` (or wherever
  your semantic model lives) — reuse it, don't recalculate it elsewhere.
- Run a real `EXPLAIN ANALYZE` on one of your own slow(ish) queries,
  apply a real fix, measure the real difference.
- Run `dbt docs generate` for real; fill in `starter/data_dictionary.md`;
  trace one real mart column back to its raw source via the lineage
  graph.

`CHECKLIST_TIMELINE.md` has the suggested day-by-day pace and the full
sequenced checklist.

**Where's the exact bar for "done," and what are the optional stretch
goals?** This repo (your own copy) doesn't include `MVP.md` (your **M**inimum **V**iable **P**roduct —
the required baseline) or `ABOVE_AND_BEYOND.md` on purpose — they're not something to keep sitting
in your portfolio repo. Ask your instructor for the link to this
template's `project-scope` branch to read them, or check the checklist
your instructor shares through the classroom, which covers the same
ground.

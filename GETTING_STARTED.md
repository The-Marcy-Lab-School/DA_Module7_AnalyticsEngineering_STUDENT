# Getting Started

## "Use this template" vs. Fork vs. Clone

Same rule as every project: **"Use this template"** on this repo's GitHub
page (not Fork) creates your own independent copy. Clone *that* copy, not
this template directly.

## Set up dbt in a dedicated virtual environment

**This isn't generic "always use a venv" advice — it's a real, specific
finding for this exact tool.** Installing `dbt-core`/`dbt-postgres`
directly into a large, shared Python environment (a full Anaconda
install, or any environment with hundreds of other packages already in
it) can make even `dbt debug` hang for minutes with no output — real,
measured behavior, not a hypothetical. A small, dedicated virtual
environment avoids this completely (confirmed: the same command that
hung for 2+ minutes in a large shared environment completed in ~5
seconds in a clean one) and is genuinely standard, correct dbt practice
regardless — dbt-core has real dependency-version sensitivities that a
dedicated environment protects you from.

```bash
python3 -m venv .venv
source .venv/bin/activate      # Windows: .venv\Scripts\activate
pip install dbt-core dbt-postgres
dbt --version                  # should show Core + the postgres plugin, both installed
```

Activate this same `.venv` every time you work on this project — a
forgotten `source .venv/bin/activate` is the most common reason
"dbt worked yesterday but not today."

## Reconnect to your Module 3 database

**Same real database you built in Module 3 and reconnected to in Module
4 — not a new one, no new domain to pick.** The database name itself
still doesn't matter — only the connection details do (same real point
Module 4's own `GETTING_STARTED.md` made: "there's no 'correct' name to
match — only 'does this connection string point at your actual data'").

1. Confirm it's still reachable the same way you did in Module 4:
   `psql <your Module 3 connection string>`. If that's gone, pull your
   own `schema.sql` from your Module 3 repo and rebuild it — you've done
   this exact recovery once already.
2. **dbt's connection config is different from `DATABASE_URL`** — it
   lives in `~/.dbt/profiles.yml` (a file **outside this repo entirely**,
   on your own machine — never committed, by design, since it holds real
   credentials). See `starter/profiles.yml.example` for the exact shape;
   copy it to `~/.dbt/profiles.yml` and fill in your own real values.
   The top-level key (`analytics_engineering_project`) must match
   `starter/dbt_project/dbt_project.yml`'s own `profile:` value exactly
   — already set for you, don't rename one without the other.
3. From inside `starter/dbt_project/`, with your venv active, confirm
   the connection: `dbt debug`. **"All checks passed!"** is the real
   bar — if it hangs instead of finishing in a few seconds, you're
   probably still in the wrong Python environment (see above).

## What's next

Once `dbt debug` passes, go back to `README.md`'s "What to do" section
and `starter/required_components.md` for the real build checklist.

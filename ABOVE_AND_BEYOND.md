# Above & Beyond

Optional. Do these **after** MVP is genuinely solid — a shaky MVP with
extra features isn't the goal. Pick 1-2, not all of them.

## A second semantic metric, or a real time-based comparison

The given `models/metricflow_time_spine.sql` model supports real
time-based metric queries (e.g. month-over-month) — build a second
metric, or query your existing one with a real time grain/comparison,
and show the real result.

## A custom (singular) dbt test

Not just the built-in generic tests (`not_null`/`unique`/`relationships`/
`accepted_values`) — write a real custom SQL test that encodes an actual
business-rule assumption specific to your domain (e.g. "a policy's
termination date should never be before its effective date"). Show it
passing on your real data, and (same discipline as the required tests)
show it genuinely catching a planted violation.

## When does informal documentation stop being enough?

This module's own `process_tradeoffs` names a real judgment call: a
quick inline comment is fine for a one-off exploratory model, but a
model other analysts or a BI tool depend on needs real `schema.yml`
tests and documented column descriptions — the same "when does informal
stop being enough" call analysts make with formal data-governance
artifacts (revisited for real in **Module 10**). Write a short case
(half a page) for **your specific project**: which of your models
crossed that line, and which (if any) are still genuinely fine as
informal/undocumented for now? Be concrete about your own project, not
a generic answer.

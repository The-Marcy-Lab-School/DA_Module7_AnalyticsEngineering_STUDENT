# Above & Beyond

Optional. Do these **after** MVP is genuinely solid — a shaky MVP with
extra features isn't the goal. Pick 1-2, not all of them.

## A real month-over-month percent-change query

Your MVP's time-grain mart already gives you a real monthly trend — take
it one step further: write a real query (against your mart, using the
given `models/metricflow_time_spine.sql` if useful) that computes the
real **percent change** month-over-month, not just the raw monthly
numbers. Show the real result and call out which month had the largest
real swing, and a real, specific guess at why (don't just report the
number).

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
artifacts (revisited for real in **Module 11**). Write a short case
(half a page) for **your specific project**: which of your models
crossed that line, and which (if any) are still genuinely fine as
informal/undocumented for now? Be concrete about your own project, not
a generic answer.

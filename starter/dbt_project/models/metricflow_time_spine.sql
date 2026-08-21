-- Given, mechanical: dbt's semantic-layer/metrics feature requires a
-- real "time spine" model in the project (a plain calendar table) --
-- this isn't graded content, it's a real dbt platform requirement.
-- Verified working against PostgreSQL: generates one row per day,
-- 2015-01-01 through 2030-12-31 (wide enough to cover any Module 3
-- domain's real date range).
select cast(date_day as date) as date_day
from generate_series(
    cast('2015-01-01' as date),
    cast('2030-12-31' as date),
    interval '1 day'
) as date_day

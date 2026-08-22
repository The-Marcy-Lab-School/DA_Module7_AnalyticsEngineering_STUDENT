-- Given, mechanical: dbt's semantic-layer/metrics feature requires a
-- real "time spine" model in the project (a plain calendar table) --
-- this isn't graded content, it's a real dbt platform requirement.
-- Verified working against PostgreSQL: generates one row per day,
-- 1900-01-01 through 2030-12-31 -- wide enough to cover every real
-- Module 3 domain's own date columns (e.g. finance_insurance's
-- claims.date_of_loss goes back to 1978; healthcare_operations'
-- patients.birthdate goes back to 1911).
select cast(date_day as date) as date_day
from generate_series(
    cast('1900-01-01' as date),
    cast('2030-12-31' as date),
    interval '1 day'
) as date_day

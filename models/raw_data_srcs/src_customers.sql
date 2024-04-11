WITH raw_customers AS (
    SELECT
    *
    FROM {{ source('dl_northwind_practice','customers') }}
)
SELECT
    id AS customer_id,
    first_name,
    last_name,
    company,
    job_title,
    business_phone,
    city,
    state_province as state,
    zip_postal_code as zip_code
FROM
    raw_customers
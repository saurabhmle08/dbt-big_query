WITH raw_orders AS (
    SELECT
    *
    FROM {{ source('dl_northwind_practice','orders') }}
)
SELECT
    id AS order_id,
    order_date,
    paid_date,
    payment_type,
    shipped_date,
    shipper_id,
    ship_name,
    ship_address,
    ship_city,
    ship_state_province,
    ship_zip_postal_code,
    ship_country_region,
    shipping_fee,
    taxes,
    status_id,
    employee_id,
    customer_id
FROM
    raw_orders
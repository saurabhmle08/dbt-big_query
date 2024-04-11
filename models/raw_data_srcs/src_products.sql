WITH raw_products AS (
    SELECT
    *
    FROM {{ source('dl_northwind_practice','products') }}
)
SELECT
    id AS product_id,
    product_code,
    product_name,
    standard_cost,
    list_price,
    reorder_level,
    target_level,
    quantity_per_unit AS qty_per_unit,
    minimum_reorder_quantity AS minimum_reorder_qty,
    category,
    discontinued,
    supplier_ids
FROM
    raw_products
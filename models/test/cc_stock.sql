WITH cc_sales_products AS (
    SELECT * FROM {{ ref('cc_sales_products') }}
  ),

stg_cc_stock AS (
  SELECT * from {{ref("stg_cc_stock")}}
)


SELECT
 *

FROM stg_cc_stock t
LEFT JOIN `cc_sales_products` d USING (product_id)
WHERE TRUE
ORDER BY product_id
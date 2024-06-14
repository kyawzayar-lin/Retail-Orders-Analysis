-- models/final/top5_selling_products_per_region.sql

WITH top_selling_products AS (
    SELECT 
        region,
        product_id,
        SUM(sale_price) AS sales
    FROM 
        {{ ref('stage_orders') }}
    GROUP BY 
        region, product_id
)
, ranked_products AS (
    SELECT 
        region,
        product_id,
        sales,
        ROW_NUMBER() OVER (PARTITION BY region ORDER BY sales DESC) AS rn
    FROM 
        top_selling_products
)

SELECT 
    region,
    product_id,
    sales
FROM 
    ranked_products
WHERE 
    rn <= 5

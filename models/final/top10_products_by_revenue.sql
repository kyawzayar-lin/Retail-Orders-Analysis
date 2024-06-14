-- models/final/top10_highest_revenue_products.sql


WITH top_product AS (
    SELECT 
        product_id,
        ROUND (SUM(sale_price), 2) as sales
    FROM 
        {{ ref('stage_orders') }}
    GROUP BY 
        product_id
    ORDER BY 
        sales desc
    LIMIT 10
    )

SELECT * FROM top_product
    
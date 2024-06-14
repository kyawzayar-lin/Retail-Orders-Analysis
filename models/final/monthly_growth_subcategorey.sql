-- models/final/highest_growth_sub_category.sql

WITH subcategory_growth AS (
    SELECT 
        sub_category,
        YEAR(order_date) AS order_year,
        SUM(sale_price) AS sales
    FROM 
        {{ ref('stage_orders') }}
    GROUP BY 
        sub_category, YEAR(order_date)
),
highest_sales_subcatgorey AS (
    SELECT 
        sub_category,
        SUM(CASE WHEN order_year = 2022 THEN sales ELSE 0 END) AS sales_2022,
        SUM(CASE WHEN order_year = 2023 THEN sales ELSE 0 END) AS sales_2023
    FROM 
        subcategory_growth 
    GROUP BY 
        sub_category
)
SELECT 
    sub_category,
    sales_2022,
    sales_2023,
    (sales_2023 - sales_2022) AS growth
FROM 
    highest_sales_subcatgorey
ORDER BY 
    growth DESC
LIMIT 1

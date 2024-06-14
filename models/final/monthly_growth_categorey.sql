-- models/final/highest_sales_month_per_category.sql

WITH category_growth AS (
    SELECT 
        category,
        DATE_FORMAT(order_date, '%Y%m') AS order_year_month,
        SUM(sale_price) AS sales 
    FROM 
        {{ ref('stage_orders') }}
    GROUP BY 
        category, DATE_FORMAT(order_date, '%Y%m')
),
rank_category AS (
    SELECT 
        category,
        order_year_month,
        sales,
        ROW_NUMBER() OVER (PARTITION BY category ORDER BY sales DESC) AS rn
    FROM 
        category_growth
)


SELECT 
    category,
    order_year_month,
    sales
FROM 
    rank_category
WHERE 
    rn = 1

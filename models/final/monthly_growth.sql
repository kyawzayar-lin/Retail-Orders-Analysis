-- models/final/month_over_month_growth_comparison.sql

WITH monthly_orders AS (
    SELECT 
        YEAR(order_date) AS order_year,
        MONTH(order_date) AS order_month,
        SUM(sale_price) AS sales
    FROM 
        {{ ref('stage_orders') }}
    GROUP BY 
        YEAR(order_date), MONTH(order_date)
)


SELECT 
    order_month,
    SUM(CASE WHEN order_year = 2022 THEN sales ELSE 0 END) AS sales_2022,
    SUM(CASE WHEN order_year = 2023 THEN sales ELSE 0 END) AS sales_2023
FROM 
    monthly_orders 
GROUP BY 
    order_month
ORDER BY 
    order_month

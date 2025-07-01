SELECT * FROM task6.`online sales data`;
SELECT
    EXTRACT(YEAR FROM Date) AS order_year,
    EXTRACT(MONTH FROM Date) AS order_month,
    SUM(Total_Revenue) AS total_revenue,
    COUNT(DISTINCT Transaction_ID) AS total_orders
FROM
    online_sales
WHERE
    Date BETWEEN '2024-01-01' AND '2024-06-30'
GROUP BY
    EXTRACT(YEAR FROM Date),
    EXTRACT(MONTH FROM Date)
ORDER BY
    order_year,
    order_month;

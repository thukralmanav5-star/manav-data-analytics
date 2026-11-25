-- Repeat Customer KPI Analysis

SELECT
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Total_Orders > 1 THEN 1 ELSE 0 END) AS Repeat_Customers
FROM (
    SELECT
        c.customer_unique_id,
        COUNT(o.order_id) AS Total_Orders
    FROM dbo.Orders o
    JOIN dbo.Customers c
        ON o.customer_id = c.customer_id
    GROUP BY c.customer_unique_id
) AS CustomerData;
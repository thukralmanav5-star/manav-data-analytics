-- Repeat Customer Analysis

USE Olist_Ecommerce_Analysis;

SELECT
    c.customer_unique_id,
    COUNT(o.order_id) AS Total_Orders
FROM dbo.Orders o
INNER JOIN dbo.Customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_unique_id
HAVING COUNT(o.order_id) > 1
ORDER BY Total_Orders DESC;
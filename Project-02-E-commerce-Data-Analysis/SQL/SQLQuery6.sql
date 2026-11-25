-- Order Status Analysis

SELECT
    order_status,
    COUNT(order_id) AS Total_Orders
FROM dbo.Orders
GROUP BY order_status
ORDER BY Total_Orders DESC;
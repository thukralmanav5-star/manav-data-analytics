-- Top 10 Sellers by Revenue

SELECT TOP 10
    seller_id,
    SUM(price) AS Total_Revenue,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM dbo.[Order Items]
GROUP BY seller_id
ORDER BY Total_Revenue DESC;
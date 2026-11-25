-- Top 10 Product Categories by Revenue

SELECT TOP 10
    p.product_category_name,
    SUM(oi.price) AS Total_Revenue
FROM dbo.[Order Items] oi
JOIN dbo.Products p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY Total_Revenue DESC;
-- Revenue Contribution by Product Category

SELECT
    p.product_category_name,
    SUM(oi.price) AS Category_Revenue,
    CAST(
        100.0 * SUM(oi.price) /
        (SELECT SUM(price) FROM dbo.[Order Items])
        AS DECIMAL(10,2)
    ) AS Revenue_Percentage
FROM dbo.[Order Items] oi
JOIN dbo.Products p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY Category_Revenue DESC;
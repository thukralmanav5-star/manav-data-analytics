-- Average Review Score by Order Status

SELECT
    o.order_status,
    AVG(CAST(r.review_score AS DECIMAL(10,2))) AS Average_Review_Score
FROM dbo.Orders o
JOIN dbo.[Order Reviews] r
    ON o.order_id = r.order_id
GROUP BY o.order_status
ORDER BY Average_Review_Score DESC;
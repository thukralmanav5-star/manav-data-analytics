-- Orders Above Average Order Value

SELECT
    order_id,
    Order_Value
FROM (
    SELECT
        order_id,
        SUM(payment_value) AS Order_Value
    FROM dbo.[Order Payments]
    GROUP BY order_id
) AS OrderData
WHERE Order_Value > (
    SELECT AVG(Total_Value)
    FROM (
        SELECT
            SUM(payment_value) AS Total_Value
        FROM dbo.[Order Payments]
        GROUP BY order_id
    ) AS AverageData
)
ORDER BY Order_Value DESC;
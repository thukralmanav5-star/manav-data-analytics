-- Monthly Revenue and Order Performance

SELECT
    YEAR(o.order_purchase_timestamp) AS Order_Year,
    MONTH(o.order_purchase_timestamp) AS Order_Month,
    COUNT(DISTINCT o.order_id) AS Total_Orders,
    SUM(p.payment_value) AS Total_Revenue,
    CAST(
        SUM(p.payment_value) / COUNT(DISTINCT o.order_id)
        AS DECIMAL(10,2)
    ) AS Average_Order_Value
FROM dbo.Orders o
JOIN dbo.[Order Payments] p
    ON o.order_id = p.order_id
GROUP BY
    YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp)
ORDER BY
    Order_Year,
    Order_Month;
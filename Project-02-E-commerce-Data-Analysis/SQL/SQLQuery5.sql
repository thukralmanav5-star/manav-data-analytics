-- Monthly Revenue Analysis

SELECT
    YEAR(o.order_purchase_timestamp) AS Order_Year,
    MONTH(o.order_purchase_timestamp) AS Order_Month,
    SUM(p.payment_value) AS Monthly_Revenue
FROM dbo.Orders o
JOIN dbo.[Order Payments] p
    ON o.order_id = p.order_id
GROUP BY
    YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp)
ORDER BY
    Order_Year,
    Order_Month;
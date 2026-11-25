-- E-commerce Business Performance Summary

SELECT
    COUNT(DISTINCT o.order_id) AS Total_Orders,
    COUNT(DISTINCT c.customer_unique_id) AS Total_Customers,
    SUM(p.payment_value) AS Total_Revenue,
    CAST(
        SUM(p.payment_value) / COUNT(DISTINCT o.order_id)
        AS DECIMAL(10,2)
    ) AS Average_Order_Value
FROM dbo.Orders o
JOIN dbo.Customers c
    ON o.customer_id = c.customer_id
JOIN dbo.[Order Payments] p
    ON o.order_id = p.order_id;
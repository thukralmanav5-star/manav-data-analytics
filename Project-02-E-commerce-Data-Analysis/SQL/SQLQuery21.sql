-- Top 5 Customers by Spending

SELECT TOP 5
    c.customer_unique_id,
    SUM(p.payment_value) AS Total_Spending
FROM dbo.Orders o
JOIN dbo.Customers c
    ON o.customer_id = c.customer_id
JOIN dbo.[Order Payments] p
    ON o.order_id = p.order_id
GROUP BY c.customer_unique_id
ORDER BY Total_Spending DESC;
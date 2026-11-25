-- Customer Purchase Frequency

SELECT
    Total_Orders,
    COUNT(*) AS Number_Of_Customers
FROM (
    SELECT
        c.customer_unique_id,
        COUNT(o.order_id) AS Total_Orders
    FROM dbo.Orders o
    JOIN dbo.Customers c
        ON o.customer_id = c.customer_id
    GROUP BY c.customer_unique_id
) AS CustomerData
GROUP BY Total_Orders
ORDER BY Total_Orders;
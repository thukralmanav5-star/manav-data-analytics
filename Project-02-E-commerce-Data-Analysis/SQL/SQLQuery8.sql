-- Estimated vs Actual Delivery Time Analysis.

SELECT
    AVG(
        DATEDIFF(
            DAY,
            order_estimated_delivery_date,
            order_delivered_customer_date
        )
    ) AS Avg_Delivery_Delay_Days
FROM dbo.Orders
WHERE order_status = 'delivered';
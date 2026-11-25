-- Delivery Performance Analysis

SELECT
    AVG(
        DATEDIFF(
            DAY,
            order_purchase_timestamp,
            order_delivered_customer_date
        )
    ) AS Avg_Delivery_Days
FROM dbo.Orders
WHERE order_status = 'delivered';
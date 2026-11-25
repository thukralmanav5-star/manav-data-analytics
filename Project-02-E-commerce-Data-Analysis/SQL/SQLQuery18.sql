-- Delivery Speed Classification

SELECT
    order_id,
    DATEDIFF(
        DAY,
        order_purchase_timestamp,
        order_delivered_customer_date
    ) AS Delivery_Days,
    CASE
        WHEN DATEDIFF(DAY, order_purchase_timestamp, order_delivered_customer_date) <= 5
            THEN 'Fast'
        WHEN DATEDIFF(DAY, order_purchase_timestamp, order_delivered_customer_date) <= 10
            THEN 'Moderate'
        ELSE 'Slow'
    END AS Delivery_Category
FROM dbo.Orders
WHERE order_status = 'delivered';
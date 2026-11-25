-- Order Value Segmentation using CASE WHEN

SELECT
    order_id,
    SUM(payment_value) AS Order_Value,
    CASE
        WHEN SUM(payment_value) < 500 THEN 'Low Value'
        WHEN SUM(payment_value) <= 1000 THEN 'Medium Value'
        ELSE 'High Value'
    END AS Order_Category
FROM dbo.[Order Payments]
GROUP BY order_id
ORDER BY Order_Value DESC;
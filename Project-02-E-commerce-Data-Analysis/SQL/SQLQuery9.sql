-- Payment Method Analysis

SELECT
    payment_type,
    COUNT(*) AS Total_Payments,
    SUM(payment_value) AS Total_Revenue
FROM dbo.[Order Payments]
GROUP BY payment_type
ORDER BY Total_Revenue DESC;
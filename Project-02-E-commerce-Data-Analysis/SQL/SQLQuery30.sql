-- Month-over-Month Revenue Comparison

WITH MonthlyRevenue AS (
    SELECT
        YEAR(o.order_purchase_timestamp) AS Order_Year,
        MONTH(o.order_purchase_timestamp) AS Order_Month,
        SUM(p.payment_value) AS Revenue
    FROM dbo.Orders o
    JOIN dbo.[Order Payments] p
        ON o.order_id = p.order_id
    GROUP BY
        YEAR(o.order_purchase_timestamp),
        MONTH(o.order_purchase_timestamp)
)

SELECT
    Order_Year,
    Order_Month,
    Revenue,
    LAG(Revenue) OVER (
        ORDER BY Order_Year, Order_Month
    ) AS Previous_Month_Revenue
FROM MonthlyRevenue
ORDER BY Order_Year, Order_Month;
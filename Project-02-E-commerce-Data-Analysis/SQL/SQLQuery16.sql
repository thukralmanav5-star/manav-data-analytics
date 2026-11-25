-- Rank Top Sellers by Revenue

WITH SellerRevenue AS (
    SELECT
        seller_id,
        SUM(price) AS Total_Revenue
    FROM dbo.[Order Items]
    GROUP BY seller_id
)

SELECT
    seller_id,
    Total_Revenue,
    RANK() OVER (ORDER BY Total_Revenue DESC) AS Seller_Rank
FROM SellerRevenue
ORDER BY Seller_Rank;
-- Top 3 Products in Each Category

WITH ProductRevenue AS (
    SELECT
        p.product_category_name,
        oi.product_id,
        SUM(oi.price) AS Total_Revenue
    FROM dbo.[Order Items] oi
    JOIN dbo.Products p
        ON oi.product_id = p.product_id
    GROUP BY
        p.product_category_name,
        oi.product_id
),
RankedProducts AS (
    SELECT
        product_category_name,
        product_id,
        Total_Revenue,
        ROW_NUMBER() OVER (
            PARTITION BY product_category_name
            ORDER BY Total_Revenue DESC
        ) AS Product_Rank
    FROM ProductRevenue
)
SELECT *
FROM RankedProducts
WHERE Product_Rank <= 3
ORDER BY product_category_name, Product_Rank;
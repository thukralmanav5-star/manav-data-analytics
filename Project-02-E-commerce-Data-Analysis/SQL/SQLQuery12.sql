-- Review Score Distribution

SELECT
    review_score,
    COUNT(*) AS Total_Reviews
FROM dbo.[Order Reviews]
GROUP BY review_score
ORDER BY review_score DESC;
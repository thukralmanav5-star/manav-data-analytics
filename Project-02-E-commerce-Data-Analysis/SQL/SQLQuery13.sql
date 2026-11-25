-- Low-Rated Orders Analysis

SELECT
    review_score,
    COUNT(*) AS Low_Rated_Reviews
FROM dbo.[Order Reviews]
WHERE review_score <= 2
GROUP BY review_score
ORDER BY review_score;
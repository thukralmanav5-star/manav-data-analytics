-- Database Table Row Count Analysis

USE Olist_Ecommerce_Analysis;

SELECT
    t.name AS Table_Name,
    SUM(p.rows) AS Total_Rows
FROM sys.tables t
INNER JOIN sys.partitions p
    ON t.object_id = p.object_id
WHERE p.index_id IN (0, 1)
GROUP BY t.name
ORDER BY t.name;
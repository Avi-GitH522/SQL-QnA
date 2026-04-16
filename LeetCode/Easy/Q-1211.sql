-- Solution-1:
WITH c AS (SELECT COUNT(*) as count FROM Queries WHERE rating < 3),
b AS (SELECT COUNT(*) AS total_count FROM Queries)

SELECT
    query_name,
    ROUND(
        AVG(rating/position), 
    2) AS quality,

    ROUND(count/total_count*100,2) as poor_query_percentage

FROM Queries, c, b
GROUP BY query_name

-- Solution-2:

SELECT
    query_name,
    ROUND(
        AVG(rating/position), 
    2) AS quality,
    ROUND(100*SUM(
        CASE
            WHEN rating < 3 THEN 1
            ELSE 0
        END)
     / COUNT(*),2)
    as poor_query_percentage
FROM Queries
GROUP BY query_name

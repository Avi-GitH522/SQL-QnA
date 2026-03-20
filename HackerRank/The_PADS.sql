SELECT result
FROM (
    
    SELECT 
        CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS result,
        1 AS order_col,
        Name AS sort_col
    FROM OCCUPATIONS

    UNION ALL

    SELECT 
        CONCAT(
            'There are a total of ',
            COUNT(*),
            ' ',
            LOWER(Occupation),
            's.'
        ) AS result,
        2 AS order_col,
        COUNT(*) AS sort_col
    FROM OCCUPATIONS
    GROUP BY Occupation

) t

ORDER BY 
    order_col,
    sort_col;

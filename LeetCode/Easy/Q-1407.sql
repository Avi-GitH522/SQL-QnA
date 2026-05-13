Solution-1:

    SELECT
        u.name,
        CASE
            WHEN r.distance IS NULL THEN 0
            ELSE SUM(r.distance)
        END AS travelled_distance
    FROM Users u
    LEFT JOIN Rides r
    ON
        r.user_id = u.id
    GROUP BY 
        u.id,
        u.name
    ORDER BY 
        travelled_distance DESC, name

Solution-2:

SELECT 
    u.name,
    COALESCE(SUM(r.distance), 0) AS travelled_distance
FROM Users u
LEFT JOIN Rides r
ON u.id = r.user_id
GROUP BY u.id, u.name
ORDER BY travelled_distance DESC, u.name ASC;

-- As SUM() returns NULL incase of NULL values, COLEESCE() will return 0.






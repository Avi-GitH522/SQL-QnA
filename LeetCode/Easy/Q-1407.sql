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

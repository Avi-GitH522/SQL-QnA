SELECT
    e.name as name,
    b.bonus as bonus
FROM Employee e
LEFT JOIN Bonus b
ON
    b.empId = e.empId
WHERE
    b.bonus IS NULL
    OR
    b.bonus < 1000

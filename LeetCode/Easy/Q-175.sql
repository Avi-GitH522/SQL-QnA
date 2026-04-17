Solution-1:
SELECT 
    p.firstName, p.lastName,
    a.city, a.state
FROM Person p
LEFT JOIN Address a
ON
    a.personId = p.personId

Solution-2:
SELECT
    p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT JOIN Address a
USING (personId)

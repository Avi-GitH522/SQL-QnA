-- Question: Write a solution to report the first name, last name, city, and state of each person in the Person table. 
-- If the address of a personId is not present in the Address table, report null instead.
-- In this query, why is there a need of doing left join?

SELECT 
    p.firstName, p.lastName,
    a.city, a.state
FROM Person p
LEFT JOIN Address a
ON
    a.personId = p.personId

-- Question: Write a solution to find the employees who earn more than their managers. Return the result table in any order. The result format is in the following example.

SELECT
    e.name as Employee
FROM Employee e
JOIN Employee m
ON
    e.managerId = m.id
WHERE
    e.salary > m.salary

-- CTE --

WITH ManagerSalary AS (
    SELECT id, salary
    FROM Employee
)
SELECT
    e.name AS Employee
FROM Employee e
JOIN ManagerSalary m
ON e.managerId = m.id
WHERE e.salary > m.salary;

-- Sub Query --

SELECT
    name AS Employee
FROM Employee e
WHERE salary > (
    SELECT salary
    FROM Employee m
    WHERE m.id = e.managerId
);

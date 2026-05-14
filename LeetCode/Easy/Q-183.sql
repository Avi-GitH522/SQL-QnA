Solution-1:

SELECT
    name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON
    o.customerId = c.id
WHERE 
    o.customerId IS NULL

Solution-2:

SELECT
    name as Customers
FROM Customers
WHERE
    id NOT IN (
        SELECT
           customerId
        FROM Orders
   )

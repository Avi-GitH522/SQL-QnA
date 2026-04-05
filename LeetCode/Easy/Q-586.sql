-- Solution-1: 
SELECT
    customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC LIMIT 1


-- Solution-2 (Faster) :
SELECT
    customer_number
FROM ( 
    SELECT
    customer_number,
    row_number() over(order by count(*) desc) as rn
FROM Orders 
GROUP BY customer_number)t
WHERE rn = 1

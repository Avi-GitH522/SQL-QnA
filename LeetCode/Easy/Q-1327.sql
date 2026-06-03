SELECT
    p.product_name,
    SUM(o.unit) as unit
FROM Products p
JOIN Orders o
USING (product_id)
WHERE
    MONTH(order_date) = 2 AND
    YEAR(order_date) = 2020

GROUP BY 
    o.product_id
HAVING SUM(o.unit) >= 100

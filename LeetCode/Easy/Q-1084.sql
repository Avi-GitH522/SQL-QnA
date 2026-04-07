-- Question: Write a solution to report the products that were only sold in the first quarter of 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.

SELECT
    p.product_id, p.product_name
FROM Product p
JOIN Sales s
ON
    s.product_id = p.product_id
GROUP BY
    s.product_id, p.product_name
HAVING 
    MIN(s.sale_date) >= '2019-01-01'
    AND
    MAX(s.sale_date) <= '2019-03-31'

-- In this query, we only want particular products that were only sold in the Q1 and not outside of Q1. This is important! Because if I write:
-- WHERE sale_date BETWEEN '2019-01-01' AND '2019-03-31'
-- It will only filter rows between those dates, which we don't want. In order to find products which are sold in between two particular dates, then, we need to GROUP products then check their max and min date.
-- Since this is joined table, so, using p.product in GROUP BY clause is absolutely fine because this will also be repeated after the tables are joined.

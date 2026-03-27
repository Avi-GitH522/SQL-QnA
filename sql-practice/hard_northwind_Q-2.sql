-- Question: Show how much money the company lost due to giving discounts each year, order the years from most recent to least recent. Round to 2 decimal places
SELECT
	year(o.order_date) as order_year,
    ROUND(
        sum(p.unit_price*od.quantity*od.discount)
      ,2) as discount_amount
FROM products p
JOIN order_details od
	ON p.product_id = od.product_id
JOIN orders	o 
    on od.order_id = o.order_id
GROUP BY YEAR(o.order_date)
ORDER BY YEAR(o.order_date) DESC

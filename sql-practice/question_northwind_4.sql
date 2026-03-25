-- Question: Show the total amount of orders for each year/month.

SELECT
	YEAR(order_date) as order_year,
    month(order_date) as order_month,
    COUNT(*) as order_count
from orders
group by 
	order_year, order_month

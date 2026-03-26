-- Question: Show the employee's first_name and last_name, a "num_orders" column with a count of the orders taken, and a column called "Shipped" that displays "On Time" if the order shipped_date is less 
-- or equal to the required_date, "Late" if the order shipped late, "Not Shipped" if shipped_date is null.
-- Order by employee last_name, then by first_name, and then descending by number of orders.

SELECT
	e.first_name, e.last_name, COUNT(*) as order_count,
    CASE
    	when o.shipped_date <= o.required_date THEN "On Time"
        WHEN o.shipped_date > o.required_date THEN "Late"
        WHEN o.shipped_date IS NULL theN "Not Shipped"
    END as Shipped
from employees e 
join orders o 
on
	o.employee_id = e.employee_id
group by
	e.first_name, e.last_name, Shipped
ORDER BY 
	e.last_name, e.first_name,
    order_count desc

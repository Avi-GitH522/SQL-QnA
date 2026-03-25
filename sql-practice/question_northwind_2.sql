-- Question: Show the category_name and the average product unit price for each category rounded to 2 decimal places.

SELECT
	category_name,
    ROUND(AVG(unit_price),2) as avg_unit_price
from categories c 
join products p 
on 	
	p.category_id = c.category_id
group by category_name

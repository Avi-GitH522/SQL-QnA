-- Question: Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.
select
	province_id,
    sum(height) as total_height
from patients
group by 
	province_id
having total_height >= 7000

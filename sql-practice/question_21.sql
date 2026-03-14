-- Question: Display the total amount of patients for each province. Order by descending.
SELECT
	n.province_name,
    count(*) as patient_count
FROM province_names n
join patients p
on	
	p.province_id = n.province_id
group by p.province_id
order by patient_count desc

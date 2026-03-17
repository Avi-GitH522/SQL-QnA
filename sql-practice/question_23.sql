-- Question: display the first name, last name and number of duplicate patients based on their first name and last name.
-- Ex: A patient with an identical name can be considered a duplicate.
SELECT
	first_name, last_name,
    COUNT(*) AS duplicate_count
FROM patients
group by 
	first_name, last_name
having duplicate_count > 1

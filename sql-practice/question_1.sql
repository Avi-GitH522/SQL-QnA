-- Question: Show unique birth years from patients and order them by ascending order.
SELECT 
	distinct YEAR(birth_date) as birth_year
FROM patients
ORDER BY birth_year ASC

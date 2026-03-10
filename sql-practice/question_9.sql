-- Question: Show the city and the total number of patients in the city.
--Order from most to least patients and then by city name ascending.

SELECT
	city,
    COUNT(*) as patient_count
from patients
group by city
order by patient_count desc, city

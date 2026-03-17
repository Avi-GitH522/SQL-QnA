-- Question: Display a single row with max_visits, min_visits, average_visits where the maximum, minimum and average number of admissions per day is calculated. Average is rounded to 2 decimal places.
SELECT
	MAX(admission_count_per_day),
    min(admission_count_per_day),
    ROUND(avg(admission_count_per_day),2)
FROM (
SELECT
	COUNT(*) AS admission_count_per_day
from admissions
group by admission_date
) T

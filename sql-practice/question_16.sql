-- Question: Show all of the days of the month (1-31) and how many admission_dates occurred on that day. Sort by the day with most admissions to least admissions.
SELECT
	DAY(admission_date),
    count(*) as admission_count
from admissions
group by 
    DAY(admission_date)
order by 
	admission_count desc

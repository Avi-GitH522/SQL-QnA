-- Question: Show all columns for patient_id 542's most recent admission_date.
Solution-1:
SELECT
	*
FROM admissions
where
	patient_id = 542
ORDER BY admission_date desc
LIMIT 1


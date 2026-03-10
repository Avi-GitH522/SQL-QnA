-- Question: Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.
SELECT
  patient_id, diagnosis
FROM admissions
GROUP BY 
  diagnosis, patient_id
HAVING COUNT(*) > 1

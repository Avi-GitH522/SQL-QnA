-- Question: Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'. Primary diagnosis is stored in the admissions table.
Solution-1:
SELECT
	patient_id,
    first_name, last_name
FROM patients
WHERE patient_id in (
  select 
  	patient_id
  from admissions
  where diagnosis = 'Dementia'
)

Solution-2:
SELECT 
	p.patient_id,
    p.first_name, p.last_name
FROM patients p 
JOIN admissions a
on
	p.patient_id = a.patient_id
    
WHERE a.diagnosis = 'Dementia'

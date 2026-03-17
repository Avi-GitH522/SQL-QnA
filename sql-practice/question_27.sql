-- Question: Display every patient that has at least one admission and show their most recent admission along with the patient and doctor's full name.

SELECT
    max(admission_date) as recent_admission,
    p.first_name || ' ' || p.last_name as patient_name,
    d.first_name || ' ' || d.last_name as doctor_name
FROM admissions a
join patients p 
on 
	p.patient_id = a.patient_id
join doctors d 
on 	
	d.doctor_id = a.attending_doctor_id
GROUP BY 
	a.patient_id
HAVING COUNT(*) >= 1

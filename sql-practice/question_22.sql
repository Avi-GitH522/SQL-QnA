-- Question: For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.

SELECT
	p.first_name || ' ' || p.last_name as patient_name,
    a.diagnosis,
    d.first_name || ' ' || d.last_name as doctor_name
FROM admissions a 
join patients p
on
	p.patient_id = a.patient_id
join doctors d 
on
	d.doctor_id = a.attending_doctor_id

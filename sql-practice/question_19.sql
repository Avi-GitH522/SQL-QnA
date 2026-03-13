-- Quesiton: Show first_name, last_name, and the total number of admissions attended for each doctor. Every admission has been attended by a doctor.
SELECT
	d.first_name, d.last_name,
    count(*) as total_admission_attended
FROM doctors d 
join admissions a 
on 
	a.attending_doctor_id = d.doctor_id
group by a.attending_doctor_id

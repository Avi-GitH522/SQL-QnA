-- Question: For each doctor, display their id, full name, and the first and last admission date they attended.

SELECT
	doctor_id,
    d.first_name || ' ' || d.last_name as full_name,
    min(admission_date) as first_admission_date,
    MAX(admission_date) AS last_admission_date
from doctors d 
join admissions a 
on 
	a.attending_doctor_id = d.doctor_id
Group by doctor_id

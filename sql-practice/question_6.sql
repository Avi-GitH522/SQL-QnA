--Show the total amount of male patients and the total amount of female patients in the patients table.Display the two results in the same row.

SELECT
	(
    SELECT COUNT(*) FROM patients
    where gender = 'M'
  ) as male_count,
  (
    select count(*) from patients
    where gender = 'F'
  ) as female_count

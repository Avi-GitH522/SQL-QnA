-- Question: Display patient's full name, height in the units feet rounded to 1 decimal, weight in the unit pounds rounded to 0 decimals, birth_date, gender non abbreviated.
-- Convert CM to feet by dividing by 30.48.
-- Convert KG to pounds by multiplying by 2.205.

SELECT
	first_name || ' ' || last_name as patient_name,
    ROUND(height/30.48,1) as height,
    ROUND(weight * 2.205) as weight,
    birth_date,
    case
    	when gender = 'M' then 'Male'
        else 'Female'
    end as gender
FROM patients

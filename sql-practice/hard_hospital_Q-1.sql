-- Question: Show patient_id, weight, height, isObese from the patients table. Display isObese as a boolean 0 or 1.
-- Obese is defined as weight(kg)/(height(m)2) >= 30.
-- weight is in units kg. height is in units cm.

SELECT
	patient_id, weight, height,
    CASE
    	WHEN (weight*10000) / (height*height) >= 30 THEN 1
        ELSE 0
    END as isObese
from patients

-- OR --

SELECT
	patient_id, weight, height,
    CASE
    	WHEN weight / POWER(height/100.0, 2) >= 30 THEN 1   -- 100.0 is important, only 100 will not work! --
        ELSE 0
    END as isObese
FROM patients

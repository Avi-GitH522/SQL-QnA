-- Question: Each admission costs $50 for patients without insurance, and $10 for patients with insurance. 
-- All patients with an even patient_id have insurance. Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. 
-- Add up the admission_total cost for each has_insurance group.

WITH cte AS (
SELECT
	(
      CASE
      	WHEN patient_id%2 = 0 THEN 10
      	ELSE 50
      END
    ) as insurance_cost, (
      CASE
      	WHEN patient_id%2 = 0 THEN "Yes"
      	ELSE "No"
      END
    ) as has_insurance
FROM admissions	
)
SELECT
	has_insurance, SUM(insurance_cost)
FROM cte
GROUP BY has_insurance

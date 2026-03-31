-- Question: Show all of the patients grouped into weight groups.
-- Show the total amount of patients in each weight group. Order the list by the weight group decending.
-- For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc.
with c as (
	SELECT
		FLOOR(weight/10)*10 as weight_group
	FROM patients
)
SELECT
	COUNT(*),
    weight_group
FROM c
GROUP BY weight_group
ORDER BY weight_group DESC

-- OR --

SELECT
	COUNT(*),
    FLOOR(weight/10)*10 as weight_group
FROM patients
GROUP BY weight_group
ORDER BY weight_group DESC

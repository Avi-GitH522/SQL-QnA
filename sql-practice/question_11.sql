-- Question: Show all allergies ordered by popularity. Remove NULL values from query. 
SELECT
	allergies, 
    COUNT(*) as allergy_count
FROM patients
WHERE 
	allergies IS NOT NULL
group by allergies
ORDER BY allergy_count DESC

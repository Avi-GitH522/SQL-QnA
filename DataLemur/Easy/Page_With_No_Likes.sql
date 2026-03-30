-- Question: Write a query to return the IDs of the Facebook pages that have zero likes. The output should be sorted in ascending order based on the page IDs.
SELECT
  p.page_id
FROM pages p 
LEFT JOIN page_likes pl 
ON 
  pl.page_id = p.page_id
WHERE pl.liked_date IS NULL
ORDER BY p.page_id;

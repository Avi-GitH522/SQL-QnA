-- Question: Assume you're given a table containing job postings from various companies on the LinkedIn platform. Write a query to retrieve the count of companies that have posted duplicate job listings.

SELECT 
  COUNT(*) as duplicate_count
FROM (
SELECT
  job_id
FROM job_listings
GROUP BY company_id, title, description
HAVING COUNT(*) > 1
)a

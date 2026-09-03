-- Write a query to retrieve the top three cities that have the highest number of completed trade orders listed in descending order. 
-- Output the city name and the corresponding number of completed trade orders.
SELECT
  u.city, COUNT(*) as total_orders
FROM trades t
JOIN users u
ON
  u.user_id = t.user_id
WHERE 
  t.status = 'Completed'
GROUP BY 
  u.city
ORDER BY total_orders desc limit 3
  

-- Question: Assume you're given the table on user viewership categorised by device type where the three types are laptop, tablet, and phone.
-- Write a query that calculates the total viewership for laptops and mobile devices where mobile is defined as the sum of tablet and phone viewership. 
-- Output the total viewership for laptops as laptop_reviews and the total viewership for mobile devices as mobile_views.
SELECT 
  *
FROM (
SELECT 
  COUNT(*) as laptop_v_count
FROM viewership
WHERE device_type = 'laptop'
)a, (
SELECT 
    COUNT(*) as mobile_v_count
FROM viewership
WHERE device_type IN ('laptop', 'phone')
)b


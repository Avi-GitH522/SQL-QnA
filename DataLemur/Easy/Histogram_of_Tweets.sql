-- Question: Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. 
-- Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.
-- In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.

SELECT
  tweet_count,
  COUNT(*) AS user_count
FROM (
SELECT 
  COUNT(*) AS tweet_count
FROM tweets
WHERE YEAR(tweet_date) = 2022
GROUP BY user_id
)t
GROUP BY tweet_count

-- Explanation: I need to find out total number of tweets per user as tweet_bucket. Then I'll group again those count numbers to find out number of users fall into that bucket, 
-- that means number of users who have posted the same number of tweets. (Try to read the quesiton agian and again!)


-- Solution-2: 

WITH cte AS (
SELECT
  count(*) as tweet_bucket
FROM tweets
WHERE 
  YEAR(tweet_date) = 2022
GROUP BY user_id
)
SELECT
  tweet_bucket, COUNT(*) as user_num
FROM cte
GROUP BY tweet_bucket

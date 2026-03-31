-- Question: Assume you're given tables with information about TikTok user sign-ups and confirmations through email and text. 
-- New users on TikTok sign up using their email addresses, and upon sign-up, each user receives a text message confirmation to activate their account.
-- Write a query to display the user IDs of those who did not confirm their sign-up on the first day, but confirmed on the second day.
SELECT
  e.user_id
FROM emails e 
JOIN texts t 
ON 
  e.email_id = t.email_id
WHERE 
  DATEDIFF(t.action_date, e.signup_date) = 1
  AND t.signup_action = 'Confirmed'

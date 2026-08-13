# Write your MySQL query statement below
SELECT 
R.contest_id,
ROUND(((COUNT(R.user_id)
/
(SELECT
COUNT(user_id)
FROM Users))*100),2) as percentage
FROM Register as R
LEFT JOIN  Users as U on R.user_id = U.user_id
GROUP BY R.contest_id
ORDER BY percentage DESC,
contest_id ASC;
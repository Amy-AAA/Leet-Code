# Write your MySQL query statement below
SELECT S.user_id,
ROUND(IFNULL(CR.confirmation_rate, 0), 2) as confirmation_rate
FROM Signups as S
LEFT JOIN
(SELECT 
C.user_id,
(COUNT(C.action) / C2.requested_confirmation) as confirmation_rate
FROM Confirmations as C
JOIN (
    SELECT user_id,
    COUNT(time_stamp) AS requested_confirmation
    FROM Confirmations
    GROUP BY user_id
) as C2 on C.user_id = C2.user_id
WHERE C.action = 'confirmed'
GROUP BY C.user_id) AS CR ON CR.user_id=S.user_id;

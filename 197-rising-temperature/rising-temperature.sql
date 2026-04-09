# Write your MySQL query statement below
SELECT w1.id
FROM Weather as w1
JOIN Weather as w2 ON DATEDIFF(w1.recordDATE, w2.recordDATE) = 1
WHERE w1.temperature > w2.temperature;
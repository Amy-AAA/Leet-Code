# Write your MySQL query statement below
SELECT DISTINCT V.customer_id,
COUNT(V.customer_id) as count_no_trans
FROM Visits as V
LEFT JOIN Transactions as T on V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id;

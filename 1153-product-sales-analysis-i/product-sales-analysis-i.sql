# Write your MySQL query statement below
SELECT P.product_name,
S.year,
S.price
FROM Sales as S
JOIN Product as P on P.product_id = S.product_id;
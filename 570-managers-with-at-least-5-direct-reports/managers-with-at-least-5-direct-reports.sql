# Write your MySQL query statement below
SELECT E.name
FROM Employee as E
JOIN(
SELECT managerID,
COUNT(id) AS direct_reports
FROM Employee
GROUP BY managerID
HAVING COUNT(id)>=5) AS E2 ON E.id=E2.managerID;
# Write your MySQL query statement below
SELECT S.student_id,
S.student_name,
Su.Subject_name,
count(E.student_id) AS attended_exams
FROM Students as S
JOIN Subjects as Su
LEFT JOIN Examinations AS E ON E.student_id = S.student_id
AND E.subject_name = Su.subject_name
GROUP BY student_id, subject_name
ORDER BY student_id, subject_name;
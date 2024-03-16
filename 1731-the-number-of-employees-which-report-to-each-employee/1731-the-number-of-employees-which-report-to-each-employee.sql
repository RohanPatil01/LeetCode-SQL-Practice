# Write your MySQL query statement below
SELECT E.employee_id, E.name, R.reports_count, R.average_age
FROM Employees AS E
JOIN (
    SELECT reports_to, COUNT(*) AS reports_count, ROUND(AVG(age)) AS average_age
    FROM Employees
    WHERE reports_to IS NOT NULL
    GROUP BY reports_to
) AS R
ON E.employee_id = R.reports_to
ORDER BY employee_id;
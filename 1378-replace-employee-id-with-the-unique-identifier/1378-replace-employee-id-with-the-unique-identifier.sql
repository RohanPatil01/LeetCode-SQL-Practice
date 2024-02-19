# Write your MySQL query statement below
SELECT unique_id, t1.name FROM Employees t1
LEFT JOIN EmployeeUNI t2
ON t1.id = t2.id
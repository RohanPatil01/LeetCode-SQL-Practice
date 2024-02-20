# Write your MySQL query statement below
SELECT customer_id, COUNT(*) AS count_no_trans FROM Transactions t
RIGHT JOIN Visits v
ON t.visit_id = v.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id 
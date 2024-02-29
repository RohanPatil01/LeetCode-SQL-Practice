# Write your MySQL query statement below
SELECT 
    month, 
    country, 
    COUNT(state) AS trans_count,
    approved_count,
    SUM(amount) AS trans_total_amount,
    approved_total_amount 
FROM (
    SELECT 
        *,
        CONCAT(YEAR(trans_date), '-', LPAD(MONTH(trans_date),2,"0")) AS month,
        COUNT(CASE WHEN state = 'approved' THEN 1 END) OVER(PARTITION BY CONCAT(YEAR(trans_date), '-', LPAD(MONTH(trans_date),2,"0")), country) AS approved_count,
        SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) OVER(PARTITION BY CONCAT(YEAR(trans_date), '-', LPAD(MONTH(trans_date),2,"0")), country) AS approved_total_amount 
    FROM Transactions
) AS t1
GROUP BY month, country;

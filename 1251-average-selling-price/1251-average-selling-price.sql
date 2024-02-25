# Write your MySQL query statement below
SELECT t1.product_id, IFNULL(ROUND(SUM(price*units)/SUM(units),2),0) AS average_price FROM Prices t1
LEFT JOIN  UnitsSold t2
ON t1.product_id = t2.product_id
AND purchase_date BETWEEN start_date AND end_date
GROUP BY product_id;
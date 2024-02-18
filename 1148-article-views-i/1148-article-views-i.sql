# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT DISTINCT(author_id) AS id
FROM Views
WHERE author_id = viewer_id 
ORDER BY id; #By default ORDER BY sorts in Ascending Order. Hence, no need to explicitly mention ASC
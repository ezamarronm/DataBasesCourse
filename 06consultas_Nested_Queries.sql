SELECT new_table_projection.date,  COUNT(*) AS posts_count
FROM (
    SELECT DATE(MIN(published_date)) AS date, YEAR(published_date) AS post_year
    FROM posts
    GROUP BY post_year
    ) AS new_table_projection
GROUP BY new_table_projection.date
ORDER BY new_table_projection.date
;  

SELECT *
FROM posts
WHERE published_date = (
    SELECT MAX(published_date)
    FROM posts
    );
SELECT status, COUNT(*) AS post_quantity
FROM posts
GROUP BY status;

SELECT YEAR(published_date) AS post_year, COUNT(*) AS post_quantity
FROM posts
GROUP BY post_year;

SELECT MONTHNAME(published_date) AS post_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY post_month;


SELECT status, MONTHNAME(published_date) AS post_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY status, post_month;
SELECT *
FROM posts
WHERE id < 50;

SELECT *
FROM posts
WHERE status = "activo";

SELECT *
FROM posts
WHERE title LIKE "%escandalo%";

SELECT *
FROM posts
WHERE published_date > "2025-01-01"


SELECT *
FROM posts
WHERE published_date BETWEEN "2025-01-01" AND "2029-01-01";


SELECT *
FROM posts
WHERE id BETWEEN 50 AND 60; --contempla el rango completo

SELECT *
FROM posts
WHERE YEAR(published_date) BETWEEN "2023" AND "2024";


SELECT *
FROM posts
WHERE MONTH(published_date) = "04";
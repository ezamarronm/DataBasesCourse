SELECT	*
FROM		posts;

SELECT title, published_date, status 
FROM posts;

SELECT	title AS encabezado, published_date AS publicado, status AS estado
FROM		posts;

SELECT	count(*) AS numero_posts --cuenta numero de posts
FROM		posts;
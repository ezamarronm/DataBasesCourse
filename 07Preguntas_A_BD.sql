/*
Cuales son los 10 primeros posts que tienen más etiquetas
*/
SELECT posts.title, COUNT(*) num_etiquetas
FROM posts
INNER JOIN posts_labels ON posts.id = posts_labels.post_id
INNER JOIN labels ON labels.id = posts_labels.label_id
GROUP BY posts.id
ORDER BY num_etiquetas DESC
LIMIT 10;

/*
Cuales son las etiquetas pertenecen a cada post
*/
SELECT posts.title, GROUP_CONCAT(labels.name) 
FROM posts
INNER JOIN posts_labels ON posts.id = posts_labels.post_id
INNER JOIN labels ON labels.id = posts_labels.label_id
GROUP BY posts.id
;

/*
Etiquetas sin posts
*/
SELECT * 
FROM labels
LEFT JOIN posts_labels ON labels.id = posts_labels.label_id
WHERE posts_labels.label_id IS NULL

/*
Ordenar las categories por las que tienen mas posts
*/

SELECT l.name, COUNT(*) AS post_quantity
FROM labels AS l
    INNER JOIN posts AS p
        ON l.id = p.categorie_id
GROUP BY l.id
ORDER BY post_quantity DESC
;

/*
Que usuario ha creado mas posts
*/

SELECT u.nickname, COUNT(*) as post_quantity
FROM users AS u
    INNER JOIN posts AS p 
        ON u.id = p.user_id
GROUP BY u.id
ORDER BY post_quantity DESC;

/*
Que usuario ha creado mas posts y cuales son las categorias
*/

SELECT u.nickname, COUNT(*) as post_quantity, GROUP_CONCAT(c.categorie)
FROM users AS u
    INNER JOIN posts AS p 
        ON u.id = p.user_id
    INNER JOIN categories AS c
        ON c.id = p.categorie_id
GROUP BY u.id
ORDER BY post_quantity DESC;

/*
Que usuarios no han escrito ningun post
*/
SELECT * FROM users as u
    LEFT JOIN posts AS P ON u.id = p.user_id
WHERE p.user_id IS NULL; 
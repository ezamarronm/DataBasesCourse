/* LEFT JOIN "A"
Trae todos los usuarios tengan o no posts
-- Luego trae los posts que están relacionados con los usuarios
*/
SELECT *
FROM users 
    LEFT JOIN posts ON users.id = posts.user_id;

/*LEFT JOIN "A-B"
Trae únicamente los usuarios que no hayan escrito ningún
post
*/
SELECT *
FROM users 
    LEFT JOIN posts ON users.id = posts.user_id
    WHERE posts.user_id is NULL;

/* RIGHT JOIN "B"
Trae primero los posts sin importar si tienen o no usuario
y después los usuarios asociados a un post
*/
SELECT *
FROM users 
    RIGHT JOIN posts ON users.id = posts.user_id;

/*RIGHT JOIN "B-A"
Trae unicamente los posts que no tienen asociados un usuario
*/
SELECT *
FROM users 
    RIGHT JOIN posts ON users.id = posts.user_id
    WHERE posts.user_id is NULL;

-- ______________
/*INNER JOIN
Trae unicamente los usuarios que tienen posts.
Es decir los datos que están relacionados con ambas tablas.
*/
SELECT *
FROM users 
    RIGHT JOIN posts ON users.id = posts.user_id;

/*UNION
Trae todas las tuplas de ambas tablas
En mysql esto no funciona directamente, hay que hacer un JOIN
compuesto por un UNION.
SELECT *
FROM users 
    FULL OUTER JOIN posts ON users.id = posts.user_id;
*/
SELECT *
FROM users 
    LEFT JOIN posts on users.id = posts.user_id
UNION 
SELECT *
FROM users 
    RIGHT JOIN posts on users.id = posts.user_id;

/*DIFERENCIA SIMETRICA
Trae los usuarios sin posts
Y los posts que no tienen un usuario
*/
SELECT *
FROM users
    LEFT JOIN posts ON users.id = posts.user_id
    WHERE posts.user_id IS NULL
UNION
SELECT *
FROM users
    RIGHT JOIN posts ON users.id = posts.user_id
    WHERE posts.user_id IS NULL;
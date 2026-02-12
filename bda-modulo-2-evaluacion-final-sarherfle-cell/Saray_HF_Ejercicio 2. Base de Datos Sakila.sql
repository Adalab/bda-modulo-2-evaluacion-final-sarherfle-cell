USE sakila;

-- Selecciona todos los nombres de las películas sin que aparezcan duplicados --
/* Comentario aLumna: Utilizamos DISTINCT para eliminar duplicados y AS como alias para renombrar las columnas en español según enunciado de ejercício */

SELECT DISTINCT title AS Nombre_películas FROM film
ORDER BY title;

-- 2.  Muestra los nombres de todas las películas que tengan una clasificación de "PG-13" -- 

SELECT title AS Nombre_peliculas, rating AS Clasificacion
FROM film
WHERE rating = 'PG-13'
ORDER BY title;

 -- 3. Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripcion -- 

SELECT DISTINCT title AS Nombre_pelicula, description AS Descripción
FROM film
WHERE description LIKE '%amazing%'
ORDER BY title;

-- 4. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos --

SELECT title AS Nombre_pelicula, length AS duración
FROM film
WHERE length > 120
ORDER BY title;

-- 5. Recupera los nombres de todos los actores. --

SELECT actor.first_name AS NOMBRE
FROM actor;

-- 6. Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.

SELECT actor.first_name AS nombre, actor.last_name AS apellido
FROM actor
WHERE actor.last_name LIKE '%Gibson%';

-- 7. Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20.

SELECT actor.actor_id, actor.first_name AS Nombre_actor, actor.last_name AS apellido
FROM actor
WHERE actor.actor_id BETWEEN 10 AND 20;

-- 8. Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificación 

SELECT title AS título_peliculas, rating AS clasificacion
FROM film
WHERE rating NOT IN ('R', 'PG-13');

-- 9. Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación junto con el recuento.


SELECT rating AS clasificacion, COUNT(DISTINCT film_id) AS cantidad
FROM film
GROUP BY rating;

-- 10. Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de películas alquiladas.

SELECT c.customer_id, c.first_name AS Nombre, c.last_name AS Apellido, COUNT(r.rental_id) AS cantidad_alquilada
FROM customer AS c
INNER JOIN rental AS r
USING (customer_id)
GROUP BY c.customer_id;
 
-- 11. Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres.

SELECT 
    c.name AS categoria,
    COUNT(r.rental_id) AS total_alquileres
FROM category AS c
INNER JOIN film_category AS fc ON c.category_id = fc.category_id
INNER JOIN film AS f ON fc.film_id = f.film_id
INNER JOIN inventory AS i ON f.film_id = i.film_id
INNER JOIN rental AS r ON i.inventory_id = r.inventory_id
GROUP BY c.name
ORDER BY total_alquileres DESC;
 
-- 12. Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto con el promedio de duración.

SELECT 
    rating,
    AVG(length) AS promedio_duracion
FROM film
GROUP BY rating
ORDER BY promedio_duracion DESC;

-- 13 Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love".

SELECT a.first_name, a.last_name
FROM actor AS a
INNER JOIN film_actor AS fa ON a.actor_id = fa.actor_id
INNER JOIN film AS f ON fa.film_id = f.film_id
WHERE f.title = 'Indian Love';

 -- 14. Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción.
 
SELECT title AS Nombre_pelicula
FROM film
WHERE description LIKE '%dog%' OR description LIKE '%cat%';

-- 15. Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010.

SELECT title, release_year
FROM film
WHERE release_year BETWEEN 2005 AND 2010;

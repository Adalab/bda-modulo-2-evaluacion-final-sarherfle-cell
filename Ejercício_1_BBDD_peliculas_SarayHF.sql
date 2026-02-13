CREATE SCHEMA IF NOT EXISTS bbdd_peliculas;

USE bbdd_peliculas;

 -- Se crea tabla con las columnas solicitadas en el ejercício. Se mantiene Id 
CREATE TABLE peliculas (
    id INT PRIMARY KEY,
    titulo VARCHAR(150),
    anio INT,
    duracion INT,
    genero VARCHAR(50),
    adultos BOOLEAN
);

-- 	Insertamos los datos extraidos de la API en la tabla películas con sus respectivas columnas y los valores en el mismo orden que las columnas. 

INSERT INTO peliculas (id, titulo, anio, duracion, genero, adultos) VALUES
(1,'The Godfather',1972,175,'Crimen',FALSE),
(2,'The Godfather Part II',1974,202,'Crimen',FALSE),
(3,'Pulp Fiction',1994,154,'Crimen',TRUE),
(4,'Forrest Gump',1994,142,'Drama',FALSE),
(5,'The Dark Knight',2008,152,'Acción',FALSE),
(6,'Fight Club',1999,139,'Drama',TRUE),
(7,'Inception',2010,148,'Ciencia ficción',FALSE),
(8,'The Matrix',1999,136,'Ciencia ficción',FALSE),
(9,'The Shawshank Redemption',1994,142,'Drama',FALSE),
(10,'Interstellar',2014,169,'Ciencia ficción',FALSE),
(11,'Gladiator',2000,155,'Acción',FALSE),
(12,'Titanic',1997,195,'Romance',FALSE),
(13,'Avatar',2009,162,'Ciencia ficción',FALSE),
(14,'Saving Private Ryan',1998,169,'Bélico',TRUE),
(15,'The Silence of the Lambs',1991,118,'Thriller',TRUE),
(16,'Se7en',1995,127,'Thriller',TRUE),
(17,'Goodfellas',1990,146,'Crimen',TRUE),
(18,'The Departed',2006,151,'Crimen',TRUE),
(19,'Whiplash',2014,106,'Drama',FALSE),
(20,'La La Land',2016,128,'Musical',FALSE),
(21,'The Lord of the Rings: The Fellowship of the Ring',2001,178,'Fantasía',FALSE),
(22,'The Lord of the Rings: The Two Towers',2002,179,'Fantasía',FALSE),
(23,'The Lord of the Rings: The Return of the King',2003,201,'Fantasía',FALSE),
(24,'Star Wars: A New Hope',1977,121,'Ciencia ficción',FALSE),
(25,'Star Wars: The Empire Strikes Back',1980,124,'Ciencia ficción',FALSE),
(26,'Star Wars: Return of the Jedi',1983,131,'Ciencia ficción',FALSE),
(27,'Back to the Future',1985,116,'Aventura',FALSE),
(28,'Jurassic Park',1993,127,'Aventura',FALSE),
(29,'The Lion King',1994,88,'Animación',FALSE),
(30,'Toy Story',1995,81,'Animación',FALSE),
(31,'Finding Nemo',2003,100,'Animación',FALSE),
(32,'Shrek',2001,90,'Animación',FALSE),
(33,'The Incredibles',2004,115,'Animación',FALSE),
(34,'WALL·E',2008,98,'Animación',FALSE),
(35,'Up',2009,96,'Animación',FALSE),
(36,'Spirited Away',2001,125,'Animación',FALSE),
(37,'Princess Mononoke',1997,134,'Animación',TRUE),
(38,'The Green Mile',1999,189,'Drama',TRUE),
(39,'The Truman Show',1998,103,'Drama',FALSE),
(40,'The Social Network',2010,120,'Drama',FALSE),
(41,'Joker',2019,122,'Drama',TRUE),
(42,'Black Panther',2018,134,'Acción',FALSE),
(43,'Iron Man',2008,126,'Acción',FALSE),
(44,'The Avengers',2012,143,'Acción',FALSE),
(45,'Avengers: Endgame',2019,181,'Acción',FALSE),
(46,'Dune',2021,155,'Ciencia ficción',FALSE),
(47,'Mad Max: Fury Road',2015,120,'Acción',TRUE),
(48,'The Revenant',2015,156,'Aventura',TRUE),
(49,'Parasite',2019,132,'Thriller',TRUE),
(50,'Oldboy',2003,120,'Thriller',TRUE),
(99,'Eternal Sunshine of the Spotless Mind',2004,108,'Drama',FALSE),
(100,'Donnie Darko',2001,113,'Drama',TRUE);

-- 1. ¿Cuántas películas tienen una duración superior a 120 minutos?
 -- Comentario alumna: COUNT función de agregacuñon para contar filas utilziando id como referencia. > mayor que
 
SELECT COUNT(id) AS películas_más_120
FROM peliculas
WHERE duracion > 120;

-- 2. ¿Cuántas películas tienen contenido adulto?
 -- Comentario alumna: Where para indicar buscar dentro de la columna adultos = TRUE (si)

SELECT COUNT(id) AS peliculas_adultos
FROM peliculas
WHERE adultos = TRUE;

-- 3. ¿Cuál es la película más antigua registrada en la base de datos?
 /* Comentario alumna: 
 ORDER BY anio ASC: Ordenamos de forma ascendente, es decir, la primera fila sería la película más antigua y la fila 100 la más actual. 
 LIMIT 1 se muestra únicamente el primer resultado, como se ordenó de forma ascendente, entonces responde la pregunta de cuál es la más antigua. 
 */

SELECT titulo, anio AS año
FROM peliculas
ORDER BY anio ASC
LIMIT 1;

-- 4. Muestra el promedio de duración de las películas agrupado por género.
-- AVERAGE: para calcular el promedio de duracion. ROUND para redondear decimales, GROUP BY para agrugar por género. 

SELECT genero, ROUND(AVG(duracion)) AS promedio_duracion
FROM peliculas
GROUP BY genero;

-- 5. ¿Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor.

SELECT anio AS año, COUNT(id) AS total_peliculas
FROM peliculas
GROUP BY anio
ORDER BY total_peliculas DESC;

-- 6. ¿Cuál es el año con más películas en la base de datos
-- 
SELECT anio AS año, COUNT(id) AS total_peliculas
FROM peliculas
GROUP BY anio 
ORDER BY total_peliculas DESC
LIMIT 1;

-- 7. Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno.
--  COUNT por id en la tabla películas agrupando (GROUP BY) por género y ordenándolas en descendietne desc

SELECT genero, COUNT(id) AS total_peliculas
FROM peliculas
GROUP BY genero
ORDER BY total_peliculas DESC;

 -- 8. Muestra todas las películas cuyo título contenga la palabra "Godfather" (puedes usar cualquier palabra).

SELECT * FROM peliculas
WHERE titulo LIKE '%Godfather%';
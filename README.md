# **Evaluación Final – Módulo 2**

**Introducción**

Este repositorio contiene la resolución de la Evaluación Final del Módulo 2, que integra dos ejercicios prácticos de SQL aplicados a bases de datos.

El propósito principal es desarrollar habilidades en modelado de datos, consultas SQL y análisis de información, combinando ejercicios de creación de bases de datos con ejercicios de análisis sobre estructuras ya existentes.

**Docs ADJUNTOS:**

- Ejercicio_2. BBDD Sakila_Saray_HF_
- Ejercicio_1_BBDD_peliculas_SarayHF
- Ext_datos_películas_API

----------------------------------------------

**EJERCÍCIO 1: Creación de una bases de datos de películas extraídas de un API**

1.1 Objetivo del ejercício:
    Extraer datos de una API para crear una bbdd de películas a través de la insercicón de datos y obtener resultados a base de consultas en SQL.

Para trabajar con Api importamos dos librerías:

   - import requests e  
   - import pandas as pd
   - URL =  https://beta.adalab.es/resources/apis/pelis/pelis.json
   
La base contiene información sobre:
- id 
- Título
- Año de estreno
- Duración
- Género
- Contenido para adulto

En el Script se realiza:

- Creación de schema bbdd_Peliculas
- cración de tabla películas
- Inserción de datos de la API
- Ejecución de las siguientes consultas:

**Consultas desarrolladas**:
- **COUNT** --> Función de agregación para responder a las preguntas ¿cuántas?
- **WHERE** --> Para dar una indicación específica sobre los datos ( > 120, = TRUE, 
- **GROUP BY** --> Para agrupar por columnas 
- **AVG** --> Función de agregación para obtener el promedio
- **ORDER BY** --> Para ordenar según indicación (ASC o DESC)
- **LIMIT** --> Para definir el número de resutados que queremos obtener. (En este caso, se combina con ASC para respondre a más antigua o DESC para responder a año con más películas)
- **LIKE** --> para decir que algo es "como" algo. En este caso, titulo LIKE '%Godfather%';


**EJERCÍCIO 2. Base de Datos Sakila**

2.2 Objetivo del ejecício: 
    Realizar consultas y análisis de datos en el contexto de una tienda de alquiler de películas. Para este ejercício se ha utilizado la bases de datos de Sakila (bbdd de ejemplo que simula
    una tienda de alquiler de películas)

TABLAS PRINCIPALES QUE SE HAN UTILIZADO:
- Film
- Customer
- Actor
- Category 

**Consultas desarrolladas**:

- **DISTINCT** --> para eliminar duplicados
- **WHERE** --> Filtrado de datos 
- **ORDER B**Y --> Ordenar según indicaciones
- **LIKE** --> Búsquedas textuale
- **A**S --> Alias de columnas (para dar un nombre distinto en la columnas a mostrar)
- **BETWEEN , AND** --> Para definir un intervalor ENTRE valores
- **NOT IN** --> Para indicar que no se incluya determinados datos
- **USING** --> 
- **OR** --> 
- **JOIN** --> Para relacionar tablas 


**⚙️ Herramientas utilizadas:**
- Visual Studio Code
- MySQL Worbench
- GitHub

--------------------------------------

**Conclusiones generales:**

En los dos ejercicios se trabajó con bases de datos y consultas SQL para practicar la creación, organización y análisis de información. 
Se desarrollaron habilidades tanto en el diseño de bases de datos propias como en la explotación de estructuras existentes.

**Resultados principales:**

- Creación de una base de datos de películas con una tabla estructurada y 50 registros.
- Realización de consultas para
- Consultas sobre la base de dato
- Uso de joins para relacionar múltiples tablas y obtener información completa.

**Aprendizajes generales:**

- Comprensión del flujo de trabajo:
- Creación y manipulación de bases de datos relacionales.
- Inserción de datos y uso de consultas SQL básicas y avanzadas.
- Filtrado de información, agrupamiento, agregación y ordenamiento.
- Interpretación de preguntas analíticas y traducción a consultas SQL








DESAFIO 4 DB 

CREATE TABLE editorial(
            id SERIAL PRIMARY KEY,
            nombre_editorial VARCHAR
            );

SELECT * FROM editorial; =>  id | nombre_editorial 
          ----+------------------
          (0 rows)

CREATE TABLE autor(
            id SERIAL PRIMARY KEY,
            nombre VARCHAR
            );

SELECT * FROM autor; =>
                        id | nombre 
                        ----+--------
                        (0 rows)

 CREATE TABLE lector (
            id SERIAL PRIMARY KEY,
            nombre VARCHAR,
            apellido VARCHAR
            );

 SELECT * FROM lector; =>

 id | nombre | apellido 
----+--------+----------
(0 rows)

CREATE TABLE libros(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR
);

CREATE TABLE libros(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR
    );

SELECT * FROM libros; =>
 id | nombre 
----+--------
(0 rows)

 CREATE TABLE libros_editorial(
    id SERIAL PRIMARY KEY,
    id_libros INT REFERENCES libros(id),
    id_editorial INT REFERENCES editorial(id)
    );

SELECT * FROM libros_editorial; ]=>
 id | id_libros | id_editorial 
----+-----------+--------------
(0 rows)

CREATE TABLE libro_autor(
    id SERIAL PRIMARY KEY,
    id_autor INT REFERENCES autor(id),
    id_libro INT REFERENCES libros(id)
    );

 SELECT * FROM libro_autor; =>
 id | id_autor | id_libro 
----+----------+----------
(0 rows)

CREATE TABLE prestamo(
    id SERIAL PRIMARY KEY,
    id_lector INT REFERENCES lector(id),
    id_libro INT REFERENCES libros(id),
    fecha_devolucion DATE
    );

SELECT * FROM prestamo; =>
 id | id_lector | id_libro | fecha_devolucion 
----+-----------+----------+------------------
(0 rows)
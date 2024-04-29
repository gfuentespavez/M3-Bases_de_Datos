--Crear base de datos mawashi_cars--
CREATE DATABASE mawashi_cars:

--Crear tabla autos--
CREATE TABLE autos(ID INT PRIMARY KEY, marca VARCHAR(25), modelo VARCHAR(25), color VARCHAR(25), precio FLOAT);

--Crear tabla ventas
CREATE TABLE ventas(id SERIAL UNIQUE NOT NULL, fecha VARCHAR(20), id_auto INT, cliente VARCHAR(25), referencia int, cantidad FLOAT, metodo_pago VARCHAR(10), FOREIGN KEY (id_auto) REFERENCES autos(id));

--Ingresar datos a la tabla autos
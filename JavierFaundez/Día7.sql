--Guía de ejercicios día 7

--CREACION BASE DE DATOS mawashi_cars
CREATE DATABASE mawashi_cars;

--NOS CONECTAMOS A LA BASE DE DATOS
\c mawashi_cars

--CREAMOS LA TABLA DE AUTOS
CREATE TABLE autos (
id INT PRIMARY KEY, 
marca VARCHAR(25), 
modelo VARCHAR(25), 
año VARCHAR(25), 
color VARCHAR(25), 
precio FLOAT
);

--CREAMOS TABLA CON INFORMACION DE VENTAS
CREATE TABLE ventas(
id SERIAL UNIQUE NOT NULL, 
fecha VARCHAR(20), 
id_auto INT, 
cliente VARCHAR(25), 
referencia INT, 
cantidad FLOAT, 
metodo_pago VARCHAR(10), 
FOREIGN KEY(id_auto) REFERENCES autos (id));

--INSERTAMOS REGISTROS EN LA TABLA AUTOS
INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES 
(1,'Toyota', 'Corolla Araya', '1991', 'Blanco', 1200000);
INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES 
(2,'Mazda', 'Mazda 3', '2000', 'Azul',2000000);
INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES 
(3,'Chevrolet', 'Spark', '1998', 'Verde Oscuro', 1200000);
INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES
(4,'Nissan', 'Versa', 2018, 'Gris Plata', 5000000);
INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES 
(5,'Hyundai', 'Accent', 2022, 'Rojo', 10500000);
INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES 
(6,'Kia', 'Rio', 2020, 'Negro', 8000000);
INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES 
(7,'Volkswagen', 'Gol', 2015, 'Azul Marino', 3500000);
INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES
(8,'Fiat', 'Mobi', 2017, 'Blanco', 2800000);
INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES 
(9,'Suzuki', 'Swift', 2019, 'Gris Oxford', 6200000);
INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES 
(10,'Peugeot', '208', 2021, 'Rojo', 9800000);

--INSERTAMOS REGISTROS EN LA TABLA VENTAS
INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad, metodo_pago) VALUES
('2020-10-15', 1, 'Chuck', 43224, 12000000,'Débito');
INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad, metodo_pago) VALUES
('2020-11-15', 1, 'Donnie', 43334, 12000000,'Transfer');
INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad, metodo_pago) VALUES
('2020-12-15', 3, 'Jet', 43444, 12000000, 'Cheque');
INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad, metodo_pago) VALUES
('2021-01-05', 1, 'Peter', 43335, 12000000, 'Débito');
INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad, metodo_pago) VALUES
('2021-01-15', 1, 'Abigail', 43554, 12000000,'Transfer');
INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad, metodo_pago) VALUES
('2021-02-01', 3, 'Jhon', 43456, 12000000, 'Cheque');
INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad, metodo_pago) VALUES 
('2021-02-01', 2, 'Walter', 54321, 2000000, 'Efectivo');
INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad, metodo_pago) VALUES 
('2021-03-15', 3, 'Sarah', 54322, 1200000, 'Tarjeta');
INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad, metodo_pago) VALUES 
('2021-04-05', 4, 'Jessica', 54323, 5000000, 'Débito');
INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad, metodo_pago) VALUES
('2021-05-25', 5, 'Luis', 54324, 10500000, 'Transfer');

--Obtenemos un reporte con el nombre de los clientes registrados en la tabla venta, junto con la marca y el modelo del auto asociado a la venta realizada.
SELECT ventas.cliente, autos.marca, autos.modelo-- SELECCIONE LAS COLUMNAS QUE LAS PREGUNTAS SOLICITABAN
FROM ventas --TABLA DE ORIGEN DE LA CONSULTA
JOIN autos ON ventas.id_auto = autos.ID; --RELACIONE LA TABLA VENTAS Y AUTOS A TRAVES ID DE AUTOS

--Tabla que muestre los autos que no han sido vendidos.
-- Obtener todos los autos cuyos id no se encuentran en la tabla Ventas.
SELECT autos.* -- SELECCIONAR TODAS LAS COLUMNAS DE LA TABLA AUTOS, SEGUN LO SOLICITADO EN LA PREGUNTA
FROM autos --TABLA DE ORIGEN DE LA CONSULTA
LEFT JOIN ventas ON autos.ID  =  ventas.id_auto -- RELACION AMBAS TABLAS
WHERE ventas IS NULL;-- COMPARA AMBAS TABLAS Y AQUELLOS DATOS QUE NO TENGAN COINCIDENCIAS SERAN NULL

--saber los registros que no tienen relación entre ambas tablas
--para hacer el cruce con la información cedida anteriormente y terminar la auditoría.
SELECT * --SELECCIONE TODO
FROM autos --DESDE LA TABLA QUE INICIA LA CONSULTA
FULL OUTER JOIN ventas ON ventas.id_auto=autos.id  --RELACION ENTRE AMBAS TABLAS
WHERE autos.id IS NULL OR ventas.id_auto IS NULL; --NULL EN ESTE CASO QUEDA CUANDO NO HAY COINCIDENCIAS ENTRE TABLAS
-- EL FULL OUTER JOIN se utiliza para combinar datos de dos tablas y devuelve todos los registros de ambas tablas, incluso si no hay una coincidencia entre ellas.
-- Si no hay coincidencia para un registro en la otra tabla, los campos correspondientes se rellenan con valores NULL.


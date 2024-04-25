--Creamos la base de datos
CREATE DATABASE lg_company;
--Nos conectamos a la base de datos
\c lg_company
--Creamos la tabla llamada clientes
CREATE TABLE clientes (id integer unique not null, name VARCHAR(25) not null, email
VARCHAR(50));
--Insertamos datos a la tabla clientes
INSERT INTO clientes(id, name) values (1, 'Nombre 1');
INSERT INTO clientes(id, name) values (2, 'Nombre 2');
INSERT INTO clientes(id, name) values (3, 'Nombre 3');
--Alteramos la columna email
ALTER TABLE clientes ALTER COLUMN email SET NOT NULL;
--Actualizamos a columna email
UPDATE clientes SET email = '' WHERE email IS NULL;
--
ALTER TABLE clientes ALTER COLUMN email SET NOT NULL;
--Aplicando lo aprendido
UPDATE clientes SET fecha = '01-01-1111' WHERE fecha IS NULL;

ALTER TABLE clientes ALTER COLUMN fecha SET NOT NULL;
--Paso 6:
UPDATE clientes SET fecha = COALESCE(fecha, '2024-01-01');
--

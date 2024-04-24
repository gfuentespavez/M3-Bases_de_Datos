--
CREATE DATABASE lg_company;
--
\c lg_company
--
CREATE TABLE clientes (id integer unique not null, name VARCHAR(25) not null, email
VARCHAR(50));
--
INSERT INTO clientes(id, name) values (1, 'Nombre 1');
INSERT INTO clientes(id, name) values (2, 'Nombre 2');
INSERT INTO clientes(id, name) values (3, 'Nombre 3');
--
ALTER TABLE clientes ALTER COLUMN email SET NOT NULL;
--
UPDATE clientes SET email = '' WHERE email IS NULL;
--
ALTER TABLE clientes ALTER COLUMN email SET NOT NULL;
--Aplicando lo aprendido
UPDATE clientes SET fecha = '01-01-1111' WHERE fecha IS NULL;

ALTER TABLE clientes ALTER COLUMN fecha SET NOT NULL;
--Poso 6:
UPDATE clientes SET fecha = COALESCE(fecha, '2024-01-01');
--

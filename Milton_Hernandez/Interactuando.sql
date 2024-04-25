postgres=# CREATE DATABASE mawashi_cars;
CREATE DATABASE
postgres=# \c mawashi_cars
You are now connected to database "mawashi_cars" as user "postgres".
mawashi_cars=# CREATE TABLE autos(id INT PRIMARY KEY, marca VARCHAR(25), modelo
mawashi_cars(# VARCHAR(25), año VARCHAR(25), color VARCHAR(25), precio FLOAT);
CREATE TABLE
mawashi_cars=# CREATE TABLE ventas(id SERIAL UNIQUE NOT NULL, fecha VARCHAR(20),
mawashi_cars(# id_auto INT, cliente VARCHAR(25), referencia INT, cantidad FLOAT,
mawashi_cars(# metodo_pago VARCHAR(10), FOREING KEY (id_auto) REFERENCES autos(id));
ERROR:  no existe el tipo «key»
LINE 3: metodo_pago VARCHAR(10), FOREING KEY (id_auto) REFERENCES au...
                                         ^
mawashi_cars=# CREATE TABLE ventas(id SERIAL UNIQUE NOT NULL, fecha VARCHAR(20),
mawashi_cars(# id_auto INT, cliente VARCHAR(25), referencia INT, cantidad FLOAT,
mawashi_cars(# metodo_pago VARCHAR(10), FOREIGN KEY (id_auto) REFERENCES autos(id));
CREATE TABLE
mawashi_cars=# INSERT INTO autos (id, marca, modelo, año, color, precio) values (1,
mawashi_cars(# 'Toyota', 'Corolla Araya', '1991', 'Blanco', 1200000);
INSERT 0 1
mawashi_cars=# INSERT INTO autos (id, marca, modelo, año, color, precio) values (2,
mawashi_cars(# 'Mazda', 'Mazda 3', '2000', 'Azul',2000000);
INSERT 0 1
mawashi_cars=# INSERT INTO autos (id, marca, modelo, año, color, precio) values (3,
mawashi_cars(# 'Chevrolet', 'Spark', '1998', 'Verde Oscuro', 1200000);
INSERT 0 1
mawashi_cars=# INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES (4,
mawashi_cars(# 'Nissan', 'Versa', 2018, 'Gris Plata', 5000000);
INSERT 0 1
mawashi_cars=# INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES (5,
mawashi_cars(# 'Hyundai', 'Accent', 2022, 'Rojo', 10500000);
INSERT 0 1
mawashi_cars=# INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES (6,
mawashi_cars(# 'Kia', 'Rio', 2020, 'Negro', 8000000);
INSERT 0 1
mawashi_cars=# INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES (7,
mawashi_cars(# 'Volkswagen', 'Gol', 2015, 'Azul Marino', 3500000);
INSERT 0 1
mawashi_cars=# INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES (8,
mawashi_cars(# 'Fiat', 'Mobi', 2017, 'Blanco', 2800000);
INSERT 0 1
mawashi_cars=# INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES (9,
mawashi_cars(# 'Suzuki', 'Swift', 2019, 'Gris Oxford', 6200000);
INSERT 0 1
mawashi_cars=# INSERT INTO autos (id, marca, modelo, año, color, precio) VALUES (10,
mawashi_cars(# 'Peugeot', '208', 2021, 'Rojo', 9800000);
INSERT 0 1
mawashi_cars=# INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad,
mawashi_cars(# metodo_pago) VALUES('2020-10-15', 1, 'Chuck', 43224, 12000000,'Débito');
INSERT 0 1
mawashi_cars=# INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad,
mawashi_cars(# metodo_pago) VALUES('2020-11-15', 1, 'Donnie', 43334, 12000000,'Transfer');
INSERT 0 1
mawashi_cars=# INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad,
mawashi_cars(# metodo_pago) VALUES('2020-12-15', 3, 'Jet', 43444, 12000000, 'Cheque');
INSERT 0 1
mawashi_cars=# INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad,
mawashi_cars(# metodo_pago) VALUES('2021-01-05', 1, 'Peter', 43335, 12000000,'Débito');
INSERT 0 1
mawashi_cars=# INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad,
mawashi_cars(# metodo_pago) VALUES('2021-01-15', 1, 'Abigail', 43554, 12000000,'Transfer');
INSERT 0 1
mawashi_cars=# INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad,
mawashi_cars(# metodo_pago) VALUES('2021-02-01', 3, 'Jhon', 43456, 12000000, 'Cheque');
INSERT 0 1
mawashi_cars=# INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad,
mawashi_cars(# metodo_pago)VALUES ('2021-02-01', 2, 'Walter', 54321, 2000000, 'Efectivo');
INSERT 0 1
mawashi_cars=# INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad,
mawashi_cars(# metodo_pago)VALUES ('2021-03-15', 3, 'Sarah', 54322, 1200000, 'Tarjeta');
INSERT 0 1
mawashi_cars=# INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad,
mawashi_cars(# metodo_pago)VALUES ('2021-04-05', 4, 'Jessica', 54323, 5000000, 'Débito');
INSERT 0 1
mawashi_cars=# INSERT INTO ventas (fecha, id_auto, cliente, referencia, cantidad,
mawashi_cars(# metodo_pago)VALUES ('2021-05-25', 5, 'Luis', 54324, 10500000, 'Transfer');
INSERT 0 1
mawashi_cars=# SELECT cliente, marca, modelo FROM ventas INNER JOIN autos ON
mawashi_cars-# ventas.id_auto=autos.id;
 cliente |   marca   |    modelo
---------+-----------+---------------
 Chuck   | Toyota    | Corolla Araya
 Donnie  | Toyota    | Corolla Araya
 Jet     | Chevrolet | Spark
 Peter   | Toyota    | Corolla Araya
 Abigail | Toyota    | Corolla Araya
 Jhon    | Chevrolet | Spark
 Walter  | Mazda     | Mazda 3
 Sarah   | Chevrolet | Spark
 Jessica | Nissan    | Versa
 Luis    | Hyundai   | Accent
(10 rows)


mawashi_cars=# SELECT autos.* FROM autos LEFT JOIN ventas on autos.id=ventas.id_auto
mawashi_cars-# WHERE ventas IS NULL;
 id |   marca    | modelo | año  |    color    | precio
----+------------+--------+------+-------------+---------
 10 | Peugeot    | 208    | 2021 | Rojo        | 9800000
  8 | Fiat       | Mobi   | 2017 | Blanco      | 2800000
  6 | Kia        | Rio    | 2020 | Negro       | 8000000
  9 | Suzuki     | Swift  | 2019 | Gris Oxford | 6200000
  7 | Volkswagen | Gol    | 2015 | Azul Marino | 3500000
(5 rows)


mawashi_cars=# SELECT * FROM autos FULL OUTER JOIN ventas on ventas.id_auto=autos.id
mawashi_cars-# WHERE autos.id is null or ventas.id_auto is null;
 id |   marca    | modelo | año  |    color    | precio  | id | fecha | id_auto | cliente | referencia | cantidad | metodo_pago
----+------------+--------+------+-------------+---------+----+-------+---------+---------+------------+----------+-------------
 10 | Peugeot    | 208    | 2021 | Rojo        | 9800000 |    |       |         |         |            |          |
  8 | Fiat       | Mobi   | 2017 | Blanco      | 2800000 |    |       |         |         |            |          |
  6 | Kia        | Rio    | 2020 | Negro       | 8000000 |    |       |         |         |            |          |
  9 | Suzuki     | Swift  | 2019 | Gris Oxford | 6200000 |    |       |         |         |            |          |
  7 | Volkswagen | Gol    | 2015 | Azul Marino | 3500000 |    |       |         |         |            |          |
(5 rows)


mawashi_cars=# \q
create database mawashi_cars;
/* Se crea la base de datos llamada mawashi_cars */

\c mawashi_cars;
/* nos conectamos a la base de datos mawashi_cars */

create table autos(id int primary key, marca varchar(25), modelo
varchar(25), año varchar(25), color varchar(25), precio float);
/* Creamos la tabla llamada autos con los campos id, marca, modelo, año, color y precio. Id tiene un dato
entero y restriccion de primary key, marca es un dato de tipo caracteres y maximo de 25, modelo también es
dato  de catacteres con maximo de 25 al igual que año y color. El campo precio tiene un dato float decimal */


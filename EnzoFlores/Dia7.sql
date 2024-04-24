create database mawashi_cars;
/* Se crea la base de datos llamada mawashi_cars */

\c mawashi_cars;
/* nos conectamos a la base de datos mawashi_cars */

create table autos(id int primary key, marca varchar(25), modelo
varchar(25), año varchar(25), color varchar(25), precio float);
/* Creamos la tabla llamada autos con los campos id, marca, modelo, año, color y precio. Id tiene un dato
entero y restriccion de primary key, marca es un dato de tipo caracteres y maximo de 25, modelo también es
dato  de catacteres con maximo de 25 al igual que año y color. El campo precio tiene un dato float decimal */

create table ventas(id serial unique not null, fecha varchar(20),
id_auto int, cliente varchar(25), referencia int, cantidad float,
metodo_pago varchar(10), foreign key (id_auto) references autos(id));
/* Creamos la tabla llamada ventas con los campos id, fecha, id_auto, cliente, referencia, cantidad, metodo_pago. Id tiene un
dato serial autoincrementabale, debe ser unico y no puede ser nulo, fecha es un dato de tipo caracteres y maximo de 20, 
id_auto tiene un dato entero, cliente tien un dato de tipo caracteres y maximo de 25, referencia tiene un dato entero, cantidad
tiene un dato float decimal, metodo_pago es de tipo caracteres y maximo de 10. La ultima linea define una relacion con una foreign
key (columna id_auto) entre las tablas ventas y autos.*/
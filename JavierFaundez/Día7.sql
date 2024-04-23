CREATE DATABASE clientesBancarios
CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    rut CHAR(10) NOT NULL UNIQUE,
    telefono CHAR(50),
    email VARCHAR(50)
);
CREATE TABLE cuentas (
    cuentas_id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(cliente_id),
    numero_cuenta VARCHAR(50) NOT NULL UNIQUE,
    fecha_creacion DATE,
    balance FLOAT CHECK (balance >= 0),
);

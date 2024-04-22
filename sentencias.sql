-- Esta guía cubre las operaciones básicas de SQL utilizadas comúnmente para la gestión de bases de datos. 
-- Incluye ejemplos de cómo crear bases de datos, crear tablas, insertar, modificar, y borrar datos, 
-- así como establecer restricciones clave. 

-- Crear base de datos.
CREATE DATABASE nombre_base_de_datos;

-- Crear tabla.
CREATE TABLE nombre_tabla (
    columna1 datatype CONSTRAINT constraint_name,
    columna2 datatype,
    columna3 datatype,
    PRIMARY KEY (columna1)
);

-- Insertar datos.
INSERT INTO nombre_tabla (columna1, columna2, columna3) VALUES (valor1, valor2, valor3);

-- Modificar datos.
UPDATE nombre_tabla SET columna1 = valor1 WHERE condición;

-- Borrar datos.
DELETE FROM nombre_tabla WHERE condición;

-- Agregar restriccion 'clave foranea'.
ALTER TABLE nombre_tabla ADD CONSTRAINT fk_nombre_tabla FOREIGN KEY (columna_fk) REFERENCES otra_tabla (columna_otra_tabla);

-- Agregar restriccion 'NOT NULL'.
ALTER TABLE nombre_tabla MODIFY columna1 datatype NOT NULL;

-- Agregar restriccion 'UNIQUE'.
ALTER TABLE nombre_tabla ADD CONSTRAINT nombre_unique UNIQUE (columna);

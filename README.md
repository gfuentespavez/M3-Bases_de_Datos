# Bienvenidos al Módulo de Bases de Datos Relacionales

En este módulo, nos centraremos en el uso de **PostgreSQL** como motor de bases de datos. PostgreSQL es un sistema de gestión de bases de datos relacional robusto y de código abierto que ha sido desarrollado por una comunidad activa durante más de dos décadas. A continuación, aprenderemos tanto los comandos de consola necesarios para gestionar bases de datos en PostgreSQL.

## Comandos de Consola en PostgreSQL

Para interactuar con PostgreSQL a través de la consola, es crucial familiarizarse con los siguientes comandos básicos:

+ psql -U [username] -d [database_name]: Conecta al prompt de PostgreSQL especificando usuario y base de datos.
+ psql -h [host] -p [port] -U [username] -d [database_name]: Conecta al prompt de PostgreSQL especificando el host, puerto, usuario y base de datos.
+ \q: Salir del prompt de PostgreSQL.
+ \c [database_name]: Conectarse a una base de datos específica.
+ \dt: Listar todas las tablas de la base de datos actual.
+ \dt+: Listar todas las tablas de la base de datos actual con información adicional.
+ \du: Listar todos los roles y permisos de usuario.
+ \l: Listar todas las bases de datos disponibles.
+ \dn: Listar todos los esquemas en la base de datos actual.
+ \df: Listar todas las funciones disponibles en la base de datos actual.
+ \di: Listar todos los índices en la base de datos actual.
+ \dv: Listar todas las vistas en la base de datos actual.
+ \timing: Activa o desactiva la visualización del tiempo que toma ejecutar cada comando.
+ \set AUTOCOMMIT on/off: Activa o desactiva el modo de autocommit.
+ \s: Guarda la historia de comandos en un archivo especificado.
+ \i [file_path]: Ejecuta comandos SQL desde un archivo externo.


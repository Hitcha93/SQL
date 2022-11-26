-- Creacion de un usuario solamente para leer
DROP USER IF EXISTS 'read_ivan'@'localhost';
CREATE USER 'read_ivan'@'localhost' IDENTIFIED WITH mysql_native_password BY 'IvanKim93';
GRANT SELECT ON jeans_online.* TO 'read_ivan'@'localhost';

-- Creacion de un usuario con permisos de lectura, inserción y modificación
DROP USER IF EXISTS 'write_ivan'@'localhost';
CREATE USER 'write_ivan'@'localhost' IDENTIFIED WITH mysql_native_password BY 'IvanKim93';
GRANT SELECT, INSERT, UPDATE ON jeans_online.* TO 'write_ivan'@'localhost';
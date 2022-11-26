create schema vehiculos;
use vehiculos;

create table if not exists autos (
id_auto int not null auto_increment primary key,
marca_auto varchar (50));


create table if not exists motos (
id_moto int not null auto_increment primary key,
marca_moto varchar (50));

INSERT INTO autos (`id_auto`,`marca_auto`) 
	VALUES 
(1, "Ford"),
(2, "Nissan"),
(3, "Bugatti"),
(4, "Fiat"),
(5, "Renault"),
(6, "Peugeot"),
(7, "Skoda"),
(8, "Chevrolet");

INSERT INTO motos (`id_moto`,`marca_moto`) 
	VALUES 
(1, "Kawasaki"),
(2, "Ducati"),
(3, "Honda"),
(4, "Canam"),
(5, "Benelli"),
(6, "Triumph"),
(7, "Royal Enfield"),
(8, "Keeway");


-- DELETE & ROLLBACK 
START TRANSACTION;
	DELETE FROM vehiculos.autos
    WHERE id_auto < 5 ;
    SELECT * FROM vehiculos.autos;
ROLLBACK; -- vuelvo a los valores originales
SELECT * FROM vehiculos.autos;

-- DELETE & COMMIT
	DELETE FROM vehiculos.autos
    WHERE id_auto < 3 ;
    SELECT * FROM vehiculos.autos;
COMMIT; -- se guarda en este punto
ROLLBACK; -- comando rollback pero no vuelve con los valores originales
SELECT * FROM vehiculos.autos;

-- SAVEPOINT
-- Se muestra en la segunda tabla un savepoint despues de la insercion del registro #4 y otro despues de #8
-- Agrega en una línea comentada la sentencia de eliminación del savepoint de los primeros 4 registros insertados

START TRANSACTION;

	INSERT INTO `motos` (`id_moto`,`marca_moto`) values (1, "Kawasaki");
	INSERT INTO `motos` (`id_moto`,`marca_moto`) values (2, "Ducati");
    INSERT INTO `motos` (`id_moto`,`marca_moto`) values (3, "Honda");
    INSERT INTO `motos` (`id_moto`,`marca_moto`) values (4, "Canam");
SAVEPOINT MOTO_4;
	INSERT INTO `motos` (`id_moto`,`marca_moto`) values (5, "Benelli");
	INSERT INTO `motos` (`id_moto`,`marca_moto`) values (6, "Triumph");
    INSERT INTO `motos` (`id_moto`,`marca_moto`) values (7, "Royal Enfield");
    INSERT INTO `motos` (`id_moto`,`marca_moto`) values (8, "Keeway");
SAVEPOINT MOTO_8;

RELEASE SAVEPOINT MOTO_4;


-- INSERT VALUES
INSERT INTO cliente (`id_user`,`first_name`,`last_name`,`DNI`,`email`) 
	VALUES 
(1,'Curry','Linbohm','12345678','clinbohm0@geocities.jp'),
(2,'Stefanie','MacGall','12345679','smacgall1@virginia.edu'),
(3,'Donalt','Tschersich','12345680','dtschersich2@google.pl'),
(4,'Crystal','Melbourn','12345681','cmelbourn3@flavors.me'),
(5,'Jacquelyn','Laurant','12345682','jlaurant4@sohu.com'),
(6,'Roma','Gogin','12345683','rgogin5@foxnews.com'),
(7,'Zilvia','Burfield','12345684','zburfield6@netscape.com'),
(8,'Gilda','Coping','12345685','gcoping7@freewebs.com'),
(9,'Kalil','Sneesbie','12345686','ksneesbie8@dagondesign.com'),
(10,'Anders','McPaik','12345687','amcpaik9@fema.gov'),
(11,'Jenna','Kalderon','12345688','jkalderona@ycombinator.com'),
(12,'Gearalt','Boatright','12345689','gboatrightb@samsung.com'),
(13,'Dolly','Tatem','12345690','dtatemc@fda.gov'),
(14,'Inger','Hallum','12345691','ihallumd@taobao.com'),
(15,'Dorolisa','Aysh','12345692','dayshe@timesonline.co.uk'),
(16,'Isidoro','Adanez','12345693','iadanezf@illinois.edu'),
(17,'Astrix','Camamile','12345694','acamamileg@multiply.com'),
(18,'Germayne','Wyburn','12345695','gwyburnh@biglobe.ne.jp'),
(19,'Netti','Elarticulol','12345696','nelli@geocities.com'),
(20,'Hinze','Aucock','12345697','haucockj@php.net');

INSERT INTO color (`id_color`,`tipo_color`) 
	VALUES 
(1,'azul'),
(2,'verde'),
(3,'rosa'),
(4,'negra'),
(5,'blanco'),
(6,'amarillo'),
(7,'gris'),
(8,'celeste'),
(9,'gris oscuro'),
(10,'magenta');

INSERT INTO vendedor (`id_vendedor`, `nombre`,`identificacion`)
	VALUES
(1,'aylen','v1'),
(2,'richard','v2'),
(3,'leo','v3'),
(4,'ariel','v4'),
(5,'monica','v5'),
(6,'romina','v6');

INSERT INTO ubicacion (`id_ubicacion`, `localidad`, `direccion`)
	VALUES
(1,'CABA','33 Derek Plaza'),
(2,'Caseros','53095 Granby Junction'),
(3,'CABA','2881 Victoria Trail'),
(4,'Ramon Mejia','72152 Transport Hill'),
(5,'CABA','08703 Moose Lane'),
(6,'Caseros','85691 Cardinal Drive'),
(7,'Caseros','0306 Walton Avenue'),
(8,'Caseros','66889 Manley Park'),
(9,'Caseros','1 Ridge Oak Terrace'),
(10,'CABA','89517 Kings Way'),
(11,'Avellaneda','067 Ryan Terrace'),
(12,'Avellaneda','9 Loftsgordon Center'),
(13,'Avellaneda','70754 Forster Park'),
(14,'Avellaneda','60565 Springview Junction'),
(15,'Lanus','9 Darwin Lane'),
(16,'Quilmes','91643 Schmedeman Drive'),
(17,'Quilmes','351 Banding Point'),
(18,'Quilmes','2 Glacier Hill Place'),
(19,'Quilmes','0 Briar Crest Terrace'),
(20,'Lanus','28 Moland Way');

INSERT INTO envio (`id_envio`, `tipo_envio`, id_user, id_ubicacion)
	VALUES
(1, 'encomienda', 1,3),
(2, 'correo', 4,2),
(3, 'retira sucursal', 8,20),
(4, 'moto', 3,15),
(5, 'rappi', 5,7),
(6, 'uber', 8,10);

-- Faltan Insertar Datos
select * from precio;
select * from log_in;
select * from pedido;




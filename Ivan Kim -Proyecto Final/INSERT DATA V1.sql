-- INSERT VALUES
INSERT INTO clientes (`id_user`,`first_name`,`last_name`,`DNI`,`email`) 
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


INSERT INTO colores (`id_color`,`tipo_color`) 
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

INSERT INTO vendedores (`id_vendedor`, `nombre`,`identificacion`)
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

INSERT INTO envios (`id_envio`, `tipo_envio`)
	VALUES
(1, 'encomienda'),
(2, 'correo'),
(3, 'retira sucursal'),
(4, 'moto'),
(5, 'rappi'),
(6, 'uber');


INSERT INTO precios (`id_precio`, `precio`, `tipo_moneda`)
	VALUES
(1,'1910','ARS'),
(2,'2170','ARS'),
(3,'3050','ARS'),
(4,'3510','ARS'),
(5,'4290','ARS'),
(6,'4600','ARS'),
(7,'5250','ARS'),
(8,'6230','ARS'),
(9,'6620','ARS'),
(10,'7150','ARS');

insert into talles (`id_talle`, `talle`)
	values
(1,'36'),
(2,'38'),
(3,'40'),
(4,'42'),
(5,'50'),
(6,'52'),
(7,'54');

INSERT INTO log_in (`id_login`,`usuario`, `clave`, `date`, id_ubicacion, id_user) 
	VALUES 
(1, 'lverriour0', 'i189kVfNCSR', '22-12-30 12:00:00', 1, 1),
(2, 'agladdolph1', 'icWm1D', '22-12-30 12:00:01', 2, 2),
(3, 'jmarian2', 'sZxv3yz', '22-12-30 12:00:02', 3, 3),
(4, 'rerett3', 'sS2GB46BMh', '22-12-30 12:00:03', 4, 4),
(5, 'cjojic4', 'gMmx4qytcoXC', '22-12-30 12:00:04', 5, 5),
(6, 'dmerigot5', 'erJmHHOw', '22-12-30 12:00:05', 6, 6),
(7, 'sbatter6', 'b9dzVrzEw', '22-12-30 12:00:06', 7, 7),
(8, 'aguerre7', 'rBAx2G78lJut', '22-12-30 12:00:07', 8, 8),
(9, 'cpilipets8', 'z3lwfwbbOV', '22-12-30 12:00:08', 9, 9),
(10, 'ryakovlev9', 'szu4wGNI0hiS', '22-12-30 12:00:09', 10, 10),
(11, 'mfreegarda', '90uu0hVOb4', '22-12-30 12:00:10', 11, 11),
(12, 'harnallb', '5xNp1l', '22-12-30 12:00:11', 12, 12),
(13, 'ggarnettc', 'q0VFX0swm', '22-12-30 12:00:12', 13, 13),
(14, 'broelvinkd', 'JO7cDs', '22-12-30 12:00:13', 14, 14),
(15, 'kfaughnane', 'KhckKA97AE', '22-12-30 12:00:14', 15, 15),
(16, 'jkinetonf', 'IwFOtbIDCt', '22-12-30 12:00:15', 16, 16),
(17, 'sroutleyg', 'gu009lEd', '22-12-30 12:00:16', 17, 17),
(18, 'gkinnockh', 'ubsZjA2fwGdB', '22-12-30 12:00:17', 18, 18),
(19, 'eweblingi', 'Y5L4plJbg', '22-12-30 12:00:18', 19, 19),
(20, 'mmatyjaj', '0lcXdnt', '22-12-30 12:00:19', 20, 20);

insert into pagina_online (`id_pagina`, `id_user`, `id_login`, `id_ubicacion`)
	values
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 11),
(12, 12, 12, 12),
(13, 13, 13, 13),
(14, 14, 14, 14),
(15, 15, 15, 15),
(16, 16, 16, 16),
(17, 17, 17, 17),
(18, 18, 18, 18),
(19, 19, 19, 19),
(20, 20, 20, 20);

insert into articulos (`id_articulo`, `nombre_articulo`, `descripcion`, `cantidad`, id_talle, id_precio, id_color)
	values
(1, 'Ross', 'short elastizado con rotura', '15', 1, 1, 1),
(2, 'Ross', 'short elastizado con rotura', '0', 2, 1, 1),
(3, 'Ross', 'short elastizado con rotura', '15', 3, 1, 1),
(4, 'Ross', 'short elastizado con rotura', '15', 4, 1, 1),
(5, 'California', 'chupin clasico c/ bolsillo', '30', 1, 4, 1),
(6, 'California', 'chupin clasico c/ bolsillo', '30', 2, 4, 1),
(7, 'California', 'chupin clasico c/ bolsillo', '0', 3, 4, 1),
(8, 'California', 'chupin clasico c/ bolsillo', '30', 4, 4, 1),
(9, 'Dakota', 'Super Oxford Rosa', '25', 5, 10, 3),
(10, 'Dakota', 'Super Oxford Rosa', '25', 6, 10, 3),
(11, 'Dakota', 'Super Oxford Rosa', '0', 7, 10, 3),
(12, 'Ottawa', 'chupin con ruedo blanco', '20', 1, 8, 5),
(13, 'Ottawa', 'chupin con ruedo blanco', '20', 2, 8, 5),
(14, 'Vancouver', 'chupin con ruedo negro', '20', 1, 8, 4),
(15, 'Vancouver', 'chupin con ruedo negro', '20', 2, 8, 4),
(16, 'Lena', 'chupin con rotura tiro bajo gris oscuro', '30', 1, 5, 9),
(17, 'Lena', 'chupin con rotura tiro bajo gris oscuro', '30', 2, 5, 9),
(18, 'Lena', 'chupin con rotura tiro bajo gris oscuro', '30', 3, 5, 9),
(19, 'Lolo', 'chupin con estampa bolsillo ciego color', '0', 1, 6, 6),
(20, 'Lolo', 'chupin con estampa bolsillo ciego color', '0', 2, 6, 6),
(21, 'Lolo', 'chupin con estampa bolsillo ciego color', '0', 3, 6, 6),
(22, 'Marylin', 'talle especial con apliques gris', '5', 5, 9, 7),
(23, 'Marylin', 'talle especial con apliques gris', '5', 6, 9, 7),
(24, 'Marylin', 'talle especial con apliques gris', '5', 7, 9, 7),
(25, 'Pampa', 'semi oxford elastizado', '25', 1, 7, 1),
(26, 'Pampa', 'semi oxford elastizado', '25', 2, 7, 1),
(27, 'Pampa', 'semi oxford elastizado', '25', 3, 7, 1),
(28, 'Pampa', 'semi oxford elastizado', '25', 4, 7, 1),
(29, 'Lara', 'Short Desflecado', '50', 1, 3, 2),
(30, 'Lara', 'Short Desflecado', '50', 2, 3, 2),
(31, 'Lara', 'Short Desflecado', '50', 3, 3, 2),
(32, 'Margaret', 'Wide leg con bigote', '100', 2, 8, 8),
(33, 'Margaret', 'Wide leg con bigote', '0', 2, 8, 8),
(34, 'Margaret', 'Wide leg con bigote', '0', 2, 8, 8),
(35, 'Rocio', 'Chupin clasico stone localizado', '25', 1, 5, 1),
(36, 'Rocio', 'Chupin clasico stone localizado', '25', 2, 5, 1),
(37, 'Rocio', 'Chupin clasico stone localizado', '25', 3, 5, 1),
(38, 'Rocio', 'Chupin clasico stone localizado', '25', 4, 5, 1),
(39, 'Rocio', 'Chupin clasico stone localizado', '25', 5, 5, 1),
(40, 'Rocio', 'Chupin clasico stone localizado', '25', 6, 5, 1),
(41, 'Rocio', 'Chupin clasico stone localizado', '25', 7, 5, 1);



insert into pedidos (`id_pedido`, `cantidad_total`, `seguimiento`, id_user, id_articulo, id_ubicacion, id_vendedor, id_envio)
	values
(1, 5, '5323037e-2c0c-41ee-bd27-5dbcb751b555', 1, 1, 1, 1, 2),
(2, 5, '5323037e-2c0c-41ee-bd27-5dbcb751b555', 1, 12, 1, 1, 2),
(3, 5, '5323037e-2c0c-41ee-bd27-5dbcb751b555', 1, 31, 1, 1, 2),
(4, 5, '6a2a838d-1da7-49a0-8b65-29df28c16c39', 2, 7, 2, 6, 4),
(5, 2, '6a2a838d-1da7-49a0-8b65-29df28c16c40', 2, 25, 2, 6, 4),
(6, 5, '2cade3f7-9af9-4a8c-8839-de2b006ce722', 3, 41, 3, 4, 2),
(7, 2, '2cade3f7-9af9-4a8c-8839-de2b006ce723', 3, 28, 3, 4, 2),
(8, 7, '2cade3f7-9af9-4a8c-8839-de2b006ce724', 3, 31, 3, 4, 2),
(9, 14, '2cade3f7-9af9-4a8c-8839-de2b006ce725', 3, 2, 3, 4, 2),
(10, 5, 'a8a21d73-2c50-44ff-87bc-c19b387fde15', 4, 25, 4, 3, 6),
(11, 5, 'a8a21d73-2c50-44ff-87bc-c19b387fde16', 4, 26, 4, 3, 6),
(12, 5, 'a8a21d73-2c50-44ff-87bc-c19b387fde17', 4, 27, 4, 3, 6),
(13, 5, 'a8a21d73-2c50-44ff-87bc-c19b387fde18', 4, 28, 4, 3, 6),
(14, 3, '018a1c75-94fc-4083-a4fe-a23d97fae8db', 5, 16, 5, 2, 3),
(15, 6, '018a1c75-94fc-4083-a4fe-a23d97fae8db', 5, 17, 5, 2, 3),
(16, 8, '018a1c75-94fc-4083-a4fe-a23d97fae8db', 5, 25, 5, 2, 3),
(17, 1, '018a1c75-94fc-4083-a4fe-a23d97fae8db', 5, 30, 5, 2, 3),
(18, 25, '018a1c75-94fc-4083-a4fe-a23d97fae8db', 5, 39, 5, 2, 3),
(19, 4, '018a1c75-94fc-4083-a4fe-a23d97fae8db', 5, 9, 5, 2, 3),
(20, 15, '018a1c75-94fc-4083-a4fe-a23d97fae8db', 5, 12, 5, 2, 3);

-- Tablas con la informacion insertada
select * from jeans_online.clientes;
select * from jeans_online.log_in;
select * from jeans_online.pagina_online;
select * from jeans_online.articulos;
select * from jeans_online.precios;
select * from jeans_online.colores;
select * from jeans_online.talles;
select * from jeans_online.envios;
select * from jeans_online.vendedores;
select * from jeans_online.ubicacion;
select * from jeans_online.pedidos;



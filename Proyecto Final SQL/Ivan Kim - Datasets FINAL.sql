create schema jeans_online;
use jeans_online;

-- Todas las tablas con sus respectivas foreign keys ya agregadas
create table clientes (
id_user int not null auto_increment primary key,
first_name varchar (50),
last_name varchar (50),
DNI varchar (8) not null,
email varchar (50)
);

create table talles (
id_talle int not null auto_increment primary key,
talle varchar (50)
);

create table precios (
id_precio int not null auto_increment primary key,
precio decimal (6,2) not null,
tipo_moneda varchar (20)
);

create table colores (
id_color int not null auto_increment primary key,
tipo_color varchar (30)
);

create table envios (
id_envio int not null auto_increment primary key,
tipo_envio varchar (50)
);

create table ubicacion (
id_ubicacion int not null auto_increment primary key,
localidad varchar (50),
direccion varchar (50)
);

create table vendedores (
id_vendedor int not null primary key,
nombre varchar (50),
identificacion varchar (20),
cargo varchar (50) not null,
salario int not null
);

create table log_in (
id_login int not null auto_increment primary key,
usuario varchar (50) not null,
clave varchar (50) not null,
date datetime not null,

id_ubicacion int not null, 
foreign key (id_ubicacion) 
references ubicacion (id_ubicacion),

id_user int not null, 
foreign key (id_user) 
references clientes (id_user)
);
 
create table articulos (
id_articulo int not null auto_increment primary key,
nombre_articulo varchar (50),
descripcion varchar (50),
cantidad real,

id_talle int, 
foreign key (id_talle) 
references talles (id_talle),

id_precio int, 
foreign key (id_precio) 
references precios (id_precio),

id_color int, 
foreign key (id_color) 
references colores (id_color)

);

create table pedidos (
id_pedido int not null auto_increment primary key,
cantidad_total int,
seguimiento varchar (80) not null,

id_user int not null, 
foreign key (id_user) 
references clientes (id_user),

id_articulo int, 
foreign key (id_articulo) 
references articulos (id_articulo),

id_ubicacion int, 
foreign key (id_ubicacion) 
references ubicacion (id_ubicacion),

id_vendedor int, 
foreign key (id_vendedor) 
references vendedores (id_vendedor),

id_envio int, foreign key (id_envio) 
references envios (id_envio)
);

create table pagina_online (
id_pagina int not null auto_increment primary key,

id_user int, 
foreign key (id_user) 
references clientes (id_user),

id_login int, 
foreign key (id_login) 
references log_in (id_login),

id_ubicacion int, 
foreign key (id_ubicacion) 
references ubicacion (id_ubicacion)

);

-- FUNCIONES
-- Primera Funcion, Nombre completo del usuario.
delimiter $$
use `jeans_online`$$
drop function if exists `fullname_user`;
create function `fullname_user` (FullID_user int)
returns varchar (60)
reads sql data
begin
	DECLARE firstName VARCHAR(40);
    DECLARE lastName VARCHAR(40);
    DECLARE fullName VARCHAR(60);
    SET firstName = (SELECT first_name FROM clientes WHERE id_user = FullID_user);
    SET lastName = (SELECT last_name FROM clientes WHERE id_user = FullID_user);
    SET fullName = concat(firstName, ' ', lastName);
    RETURN fullName;
	end $$
delimiter ;

-- Segunda Funcion, Calculo de IVA independiente. (se puede ver en VIEWS)
delimiter $$
use `jeans_online`$$
drop function if exists `calcular_iva`$$
create function `calcular_iva` (precios decimal (10,2))
returns decimal (10,2)
no sql
begin
	declare resultado decimal (10,2);
    declare iva int;
    set iva = 21;
    set resultado = (precios * ((iva / 100) + 1));
    return resultado;
    end $$
delimiter ;
select `calcular_iva`(10);

-- Tercera Funcion
-- Indica el nivel de stock de cada articulo por descripcion y talle.
delimiter $$
use `jeans_online` $$
drop function if exists `stock_level`$$
create function `stock_level` (cantidad decimal (10,2))
returns varchar (100)
deterministic
begin
declare stock_level varchar (100);

if cantidad = 0 then set stock_level = 'Agotado';
elseif cantidad > 5 and cantidad < 20 then set stock_level = 'Bajo';
elseif cantidad > 21 and cantidad < 35 then set stock_level = 'Medio';
elseif cantidad > 36 then set stock_level = 'Alto';
end if;

return (stock_level);
end$$
delimiter ;
select distinct nombre_articulo, cantidad, descripcion, talle, ifnull(stock_level(cantidad),'Agotado') as `nivel_stock` from articulos, talles;

-- VIEWS
-- Precios solos agregado con IVA (Independiente del Articulo)
create or replace view `v_precios_finales` as (
select
id_precio,
calcular_iva (precio) as precio_final,
tipo_moneda
from 
precios
);
select * from v_precios_finales;

-- Precio de cada articulo especifico + IVA
create or replace view `v_precio_por_articulo` as (
select distinct
a.nombre_articulo as articulos,
calcular_iva(p.precio) as precio_final
from
articulos as a
join 
precios as p on (a.id_precio = p.id_precio)
);
select * from v_precio_por_articulo;

-- Precios sin IVA
create or replace view v_precios_sin_IVA as (
select distinct
a.nombre_articulo as articulo,
p.precio as precio_sin_iva
from
articulos as a
join
precios as p on (a.id_precio = p.id_precio)
);
select * from v_precios_sin_iva;

-- Ver articulo por color
create or replace view `v_articulo_color` as (
select distinct
a.nombre_articulo as articulos, 
c.tipo_color as color
from 
articulos as a
join
colores as c on (a.id_color = c.id_color)
);
select * from v_articulo_color;

-- Cantidad total de stock por articulo
create or replace view `v_stock_total_articulos` AS (
SELECT
a.nombre_articulo AS articulos,
p.precio,
sum(a.cantidad) AS cantidad_total
FROM
articulos a
JOIN precios p ON
(p.id_precio = a.id_precio)
GROUP BY
a.nombre_articulo,p.precio
);
select * from v_stock_total_articulos;

-- Salario de los vendedores
create or replace view `v_salarios_junior` as (
select
nombre as nombre_vendedor, 
cargo, 
salario as importe_ganado
from
vendedores
where
(cargo = 'vendedor')
);
select * from v_salarios_junior;

-- Salario arriba de los 100.000 considerado cargo corporativo
create or replace view `v_salarios_corporativos` as (
select
nombre as nombre_encargado, 
cargo as cargo_corporativo, 
salario as rango_mayor_100000
from
vendedores
where
(salario > 100000)
order by salario asc
);
select * from v_salarios_corporativos;

-- Todos los salarios y rangos de mayor a menor
create or replace view `v_all_salarios` as (
select
nombre as nombre_empleado,
cargo as rango,
salario as monto_ganado
from
vendedores
order by salario desc
);
select * from v_all_salarios;

-- STORED PROCEDURES
-- Primera Stored Procedure
-- agrega un columna donde indica el monto total de precio de cada articulo

DELIMITER $$
DROP PROCEDURE IF EXISTS `sp_precio_cant`$$
CREATE PROCEDURE `sp_precio_cant` ()
READS SQL DATA
BEGIN    
    DECLARE lastRows INT DEFAULT 0;
    DECLARE startRows INT DEFAULT 0;    
SELECT COUNT(*) FROM articulos INTO lastRows;
ALTER TABLE articulos ADD COLUMN total int AFTER cantidad;
		SET startRows=1;
		WHILE startRows <lastRows DO
			UPDATE articulos SET total = (cantidad*(select precio from precios where id_precio =startRows)) where id_precio = startRows;
			SET startRows=startRows+1;
		END WHILE;
END$$
DELIMITER ;

call sp_precio_cant;
SELECT * FROM articulos;

-- Segunda Stored Procedure donde se agregan articulos nuevos
drop procedure if exists `crear_articulo`;
use `jeans_online`$$
DELIMITER $$
CREATE PROCEDURE `crear_articulo` (
	IN v_nombre varchar(50),
    in v_descripcion varchar(50),
    in v_cantidad double,
    in v_talle varchar(50),
    in v_precio decimal(6,2),
    in v_moneda varchar(20),
    in v_color varchar(30))
reads sql data
begin
	declare v_id_talle int;
	declare v_id_precio int;
    declare v_id_color int;
    
    -- si el talle existe asigna el id correspondiente a v_id_talle, si no crea el talle y le asigna el id
	set v_id_talle = (select id_talle from talles WHERE talle like v_talle);
    if (v_id_talle is null) then
		insert into talles (talle) values (v_talle);
        set v_id_talle = (select id_talle from talles WHERE talle like v_talle);
	end if;
    
    -- si el precio existe asigna el id correspondiente a v_id_precio, si no crea el precio y le asigna el id
	set v_id_precio = (select id_precio from precios where precio = v_precio and tipo_moneda like v_moneda);
    if (v_id_precio is null) then
		insert into precios (precio, tipo_moneda) values (v_precio, v_moneda);
        set v_id_precio = (select id_precio from precios where precio = v_precio and tipo_moneda like v_moneda);
	end if;
    
    -- si el color existe asigna el id correspondiente a v_id_color, si no crea el color y le asigna el id
	set v_id_color = (select id_color from colores where tipo_color like v_color);
    if (v_id_color is null) then
		insert into colores (tipo_color) values (v_color);
        set v_id_color = (select id_color from colores where tipo_color like v_color);
	end if;
    
    -- crea el nuevo artículo
    insert into articulos (nombre_articulo, descripcion, cantidad, id_talle, id_precio, id_color)
    values (v_nombre, v_descripcion, v_cantidad, v_id_talle, v_id_precio, v_id_color);
    
    -- muestra mensaje con el id del nuevo articulo
    select concat('nuevo articulo creado con id: ', last_insert_id());
end$$
DELIMITER ;


-- TRIGGERS
-- Se agrega a un nuevo cliente
create table nuevos_clientes (
id_user int not null auto_increment primary key,
first_name varchar (50),
last_name varchar (50),
DNI varchar (8),
email varchar (50)
);

create trigger `audit_nuevos_clientes`
after insert on `clientes`
for each row
insert into `nuevos_clientes`
value
(new.id_user, new.first_name, new.last_name, new.DNI, new.email);

-- testeo de un nuevo cliente
INSERT INTO clientes values (21, 'Ivan','Kim','12345698','leonardo.ivankim93@gmail.com');
select * from jeans_online.clientes;
select * from jeans_online.nuevos_clientes;

use jeans_online;
-- Transacciones viejas que se borran pero quedan registradas
create table transacciones_viejas (
id_transaccion int not null auto_increment primary key,
id_pedido int not null,
cantidad_total varchar (50),
seguimiento varchar (50) not null,
id_user int,
id_articulo int,
id_ubicacion int,
id_vendedor int,
id_envio int
);

create trigger `audit_transacciones_viejas`
before delete on `pedidos`
for each row
insert into `transacciones_viejas`
value
(id_transaccion, old.id_pedido, old.cantidad_total, old.seguimiento, old.id_user , old.id_articulo, old.id_ubicacion, old.id_vendedor, old.id_envio);

-- testeo de verificacion de viejas transacciones
delete from pedidos where id_pedido between 1 and 4;
select * from jeans_online.pedidos;
select * from jeans_online.transacciones_viejas;


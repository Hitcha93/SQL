create schema jeans_online;
use jeans_online;

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
identificacion varchar (20)
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
cantidad_total int not null,
seguimiento varchar (80),

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
select * from v_precio_por_articulo;
delimiter $$
use `jeans_online`$$
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

-- Segunda Funcion, Calculo de IVA independiente. (se puede ver en VIEWS)
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

-- VIEWS
-- Precios solos agregado con IVA
create or replace view v_precios_finales as (
	select
		id_precio,
        calcular_iva (precio) as precio_final,
        tipo_moneda
	from
		precios
        );
        
select * from v_precios_finales;

-- Precio de cada articulo especifico + IVA
create or replace view v_precio_por_articulo as (
	select distinct
			a.nombre_articulo as articulos,
			calcular_iva(p.precio) as precio_final
		from
			articulos as a
            join
		precios as p on (a.id_precio = p.id_precio)
);
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


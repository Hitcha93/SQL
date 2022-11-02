create schema jeans_online;
use jeans_online;
-- Tabla 1
create table cliente (
id_user int not null auto_increment primary key,
first_name varchar (50),
last_name varchar (50),
DNI varchar (8) not null,
email varchar (50)
);

-- Tabla 2
create table log_in (
id_login int not null auto_increment primary key,
password varchar (50) not null,
ubicacion varchar (50),

id_ubicacion int not null, 
foreign key (id_ubicacion) 
references ubicacion (id_ubicacion),

id_user int not null, 
foreign key (id_user) 
references cliente (id_user)
);
 
-- Tabla 3
create table pagina_online (
id_pagina int not null auto_increment primary key,
menu varchar (20),
inicio varchar (20),
opcion varchar (20),

id_user int, 
foreign key (id_user) 
references cliente (id_user),

id_login int, 
foreign key (id_login) 
references log_in (id_login),

id_ubicacion int, 
foreign key (id_ubicacion) 
references ubicacion (id_ubicacion),

id_articulo int, 
foreign key (id_articulo) 
references articulo (id_articulo),

id_envio int, 
foreign key (id_envio) 
references envio (id_envio),

id_vendedor int, 
foreign key (id_vendedor) 
references vendedor (id_vendedor)
);

-- Tabla 4
create table articulo (
id_articulo int not null auto_increment primary key,
nombre_articulo varchar (50),
descripcion varchar (50),

id_talle int, 
foreign key (id_talle) 
references talle (id_talle),

id_precio int, 
foreign key (id_precio) 
references precio (id_precio),

id_color int, 
foreign key (id_color) 
references color (id_color),

id_stock int, 
foreign key (id_stock) 
references stock (id_stock)
);

-- Tabla 5
create table pedido (
id_pedido int not null auto_increment primary key,
descripcion varchar (50),
numero varchar (20),

id_user int not null, 
foreign key (id_user) 
references cliente (id_user),

id_articulo int, 
foreign key (id_articulo) 
references articulo (id_articulo),

id_ubicacion int, 
foreign key (id_ubicacion) 
references ubicacion (id_ubicacion),

id_vendedor int, 
foreign key (id_vendedor) 
references vendedor (id_vendedor),

id_envio int, foreign key (id_envio) 
references envio (id_envio)
);

-- Tabla 6
create table vendedor (
id_vendedor int not null primary key,
nombre varchar (50),
identificacion real
);

-- Tabla 7
create table envio (
id_envio int not null auto_increment primary key,
tipo_envio varchar (50),
cancelar bool,

id_ubicacion int, 
foreign key (id_ubicacion) 
references ubicacion (id_ubicacion),

id_user int not null, 
foreign key (id_user) 
references cliente (id_user)
);

-- Tabla 8
create table talle (
id_talle int not null auto_increment primary key,
talle varchar (50)
);

-- Tabla 9
create table precio (
id_precio int not null auto_increment primary key,
monto real not null,
precio decimal (6,2) not null,
tipo_moneda varchar (20)
);

-- Tabla 10
create table color (
id_color int not null auto_increment primary key,
tipo_color varchar (30)
);

-- Tabla 11
create table stock (
id_stock int not null auto_increment primary key,
cantidad real,
stock bool not null
);

-- Tabla 12
create table ubicacion (
id_ubicacion int not null auto_increment primary key,
calle_nombre varchar (50),
altura real not null
);






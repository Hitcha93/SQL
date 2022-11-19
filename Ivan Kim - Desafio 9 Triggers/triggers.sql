-- TRIGGERS
-- agrega a un nuevo cliente
create table nuevo_cliente (
id_user int not null auto_increment primary key,
first_name varchar (50),
last_name varchar (50),
DNI varchar (8),
email varchar (50)
);

create trigger `audit_nuevo_cliente`
after insert on `cliente`
for each row
insert into `nuevo_cliente`
value
(new.id_user, new.first_name, new.last_name, new.DNI, new.email, session_user());

-- seguimiento de cada transaccion (pedido)
create table audit_transacciones (
id_transacciones int not null auto_increment primary key,
id_pedido int,
cantidad_total varchar (50),
seguimiento varchar (50),
id_user int,
id_articulo int,
id_ubicacion int,
id_vendedor int,
id_envio int
);

create trigger `audit_transacciones`
after insert on `pedido`
for each row
insert into `audit_transacciones`
value
(new.id_pedido, new.cantidad_total, new.seguimiento, new.id_user , new.id_articulo, new.id_ubicacion, new.id_vendedor, new.id_envio, session_user())





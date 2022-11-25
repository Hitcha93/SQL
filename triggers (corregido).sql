-- TRIGGERS
-- agrega a un nuevo cliente
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


-- Transacciones viejas que se borran pero quedan registradas
create table transacciones_viejas (
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

create trigger `audit_transacciones_viejas`
before delete on `pedidos`
for each row
insert into `transacciones_viejas`
value
(id_transacciones, old.id_pedido, old.cantidad_total, old.seguimiento, old.id_user , old.id_articulo, old.id_ubicacion, old.id_vendedor, old.id_envio);

-- testeo de verificacion de viejas transacciones
delete from pedidos where id_pedido between 1 and 4;
select * from jeans_online.pedidos;
select * from jeans_online.transacciones_viejas;


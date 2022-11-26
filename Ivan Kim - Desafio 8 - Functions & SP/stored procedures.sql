-- Primera Stored Procedure
drop procedure if exists `sp_articulos_con_precio`$$
use `jeans_online`$$
delimiter $$
create procedure articulos_con_precio ()
begin 
select * from articulos;
end$$
delimiter ;

call articulos_con_precio();

-- Segunda Stored Procedure
-- Indica el monto total de precio de cada articulo
alter table articulos drop column total;

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

-- Tercera Stored Procedure
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


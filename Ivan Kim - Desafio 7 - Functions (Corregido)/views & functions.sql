
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
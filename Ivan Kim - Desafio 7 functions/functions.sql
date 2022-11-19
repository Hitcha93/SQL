-- FUNCTIONS
use jeans_online;
-- Ver nombre completo del cliente / usuario
drop function if exists `fullname_user`
delimiter $$
use `jeans_online`$$
create function `fullname_user` (FullID_user int)
returns varchar (60)
reads sql data
begin
	DECLARE firstName VARCHAR(40);
    DECLARE lastName VARCHAR(40);
    DECLARE fullName VARCHAR(60);
    SET firstName = (SELECT first_name FROM cliente WHERE id_user = FullID_user);
    SET lastName = (SELECT last_name FROM cliente WHERE id_user = FullID_user);
    SET fullName = concat(firstName, ' ', lastName);
    RETURN fullName;
	end $$

-- calcula el precio mas IVA
drop function if exists `calcular_iva`$$
create function `calcular_iva` (precio decimal (10,2))
returns decimal (10,2)
no sql
begin
	declare resultado decimal (10,2);
    declare iva int;
    set iva = 21;
    set resultado = (precio * ((iva / 100) + 1));
    return resultado;
    end $$
delimiter ;

select `calcular_iva`(10);


    
    
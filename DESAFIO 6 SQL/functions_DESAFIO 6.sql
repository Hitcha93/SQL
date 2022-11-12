use jeans_online;
-- FUNCTIONS
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
    delimiter $$
    
-- Ejemplo
select jeans_online.fullname_user(10);
    

	
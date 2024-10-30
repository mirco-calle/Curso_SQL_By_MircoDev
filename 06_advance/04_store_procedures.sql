#PROCEDIMIENTO ALMACENADO .- es una query acabamos como guardando en favoritos 
#
delimiter |
create procedure p_all_users()
begin
	select * from users;
end;


#ahora queremos ejecutar

call p_all_users

#ahora hacemos la consulta por parametros
delimiter |
create procedure p_age_users(in age_param int)
begin
	select * from users where age = age_param;
end;

#ahorammandamos a llamar, y nos llama a los usuarios que tienen 20 anios
call p_age_users(20);  

#una view es una representacion virtual de una o mas tablas
#es el resultado de una consulta, para simplificar
#creamos la vista
create  view v_adult_users as 
select name , age
from users
where age >=18;

#mandamos a llamar la vista y obtenemos una vista de los usuarios que cumplen la condicion 
select * from v_adult_users;

#OJO, cada vez que se actualice la base de datos , la vista igual debe actualizarse igual que el index

#eliminando una view
drop View v_adult_users;
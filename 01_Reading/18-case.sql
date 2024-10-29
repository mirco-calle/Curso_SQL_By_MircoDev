# una case es lanzar una logica concreta en funcion de una condicion 
select * ,
case
    when age>17 then "es mayor de edad"
	else "es menor de edad"
 end as "es mayor de edad?"
 from users;


# se peude hacer con True y False
select * ,
case
    when age>17 then True
	else False
 end as "es mayor de edad?"
 from users;

# CUANDO SE TIENEN MAS DE UNA CONDICION
 select * ,
case
    when age>18 then "es mayor de edad"
    when age = 18 then "acaba de cumplir la mayoria de edad"
	else "ES MENOR"
 end as "es mayor de edad?"
 from users;
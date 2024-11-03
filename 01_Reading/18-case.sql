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

 /*
 La expresión CASE de SQL
La CASEexpresión pasa por las condiciones y devuelve un valor cuando se cumple 
la primera condición (como una declaración if-then-else). Por lo tanto, 
una vez que una condición es verdadera, dejará de leer y devolverá el resultado.
 Si no se cumple ninguna condición, devuelve el valor de la ELSEcláusula.

Si no hay ninguna ELSEparte y ninguna condición es verdadera, devuelve NULL.
 */

--  Sintaxis CASE
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;
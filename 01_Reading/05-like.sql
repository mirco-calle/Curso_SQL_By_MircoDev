
/*
El operador LIKE de SQL
El LIKEoperador se utiliza en una WHEREcláusula para buscar un patrón específico en una columna.

Hay dos comodines que suelen utilizarse junto con el LIKEoperador:

 El signo de porcentaje % representa cero, uno o varios caracteres.
 El signo de subrayado _ representa un solo carácter.
*/
select * from users where email like '%gmail.com'; --el % se pone cuando se sabe que que existe otros caracteres antes de los solicitado
select * from users where email like 'brais%'; --el % cuando sabes que hay caracteres despues 
select * from users where email like '%gmail%' -- o puede haber caraceres antes y despues d elo solicitado

#Seleccione todos los clientes que comiencen con la letra "a":

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';
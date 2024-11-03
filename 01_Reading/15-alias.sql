-- es un cambio de nombre a la cabecera de una columna de una tabla se representa con "as"
select name, init_date as "fecha de inicio de programacion" from users where age between 20 and 30;
select name, init_date as "fecha de inicio de programacion" from users where name = "brais"

-- el siguiente nos permite concatenar cadenas
select concat('nombre:', name," ",'apellidos:', surname) from users

-- se concatena cadenas y luego se pone un titulo
select concat('nombre:', name," ",'apellidos:', surname) as "nombre completo" from users

/*
Alias ​​de SQL
Los alias de SQL se utilizan para darle a una tabla, o a una columna de una tabla, un nombre temporal.

Los alias se utilizan a menudo para que los nombres de columnas sean más legibles.

Un alias solo existe mientras dura esa consulta.

Se crea un alias con la palabra AS que es la palabra clave.
*/

-- Ejemplo
SELECT CustomerID AS ID
FROM Customers;
-- es un cambio de nombre a la cabecera de una columna de una tabla se representa con "as"
select name, init_date as "fecha de inicio de programacion" from users where age between 20 and 30;
select name, init_date as "fecha de inicio de programacion" from users where name = "brais"

-- el siguiente nos permite concatenar cadenas
select concat('nombre:', name," ",'apellidos:', surname) from users

-- se concatena cadenas y luego se pone un titulo
select concat('nombre:', name," ",'apellidos:', surname) as "nombre completo" from users
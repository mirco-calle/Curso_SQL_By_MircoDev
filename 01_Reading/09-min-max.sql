select max(age) from users; -- aqui no se puede concatenar con otras columnas, ejm select max(age), name from users;
select min(age) from users; -- aqui no se puede concatenar con otras columnas, ejm select min(age), name from users;

/*
Las funciones SQL MIN() y MAX()
La MIN()función devuelve el valor más pequeño de la columna seleccionada.

La MAX()función devuelve el valor más grande de la columna seleccionada.
*/

-- Ejemplo de MIN
-- Encuentre el precio más bajo en la columna Precio:

SELECT MIN(Price)
FROM Products;
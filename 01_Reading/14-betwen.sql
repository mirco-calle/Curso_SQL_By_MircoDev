-- sirve para encontrar resultados que se comprenden entre dos valores un valor minimo y uno maximo
select * from users where age between 10 and 30;

/*
El operador BETWEEN de SQL
El BETWEEN operador selecciona valores dentro de un rango determinado. Los valores pueden ser números, texto o fechas.

El BETWEENoperador es inclusivo: se incluyen los valores inicial y final. 
*/

-- Ejemplo
-- Selecciona todos los productos con un precio entre 10 y 20:

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;
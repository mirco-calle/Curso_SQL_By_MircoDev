select * from users where not email = "brais@gmail.com";
select * from users where not email = "brais@gmail.com" and age =15;
select * from users where not email = "brais@gmail.com" or age =15;

/*
La WHEREcláusula puede contener uno o varios ANDoperadores.

El ANDoperador se utiliza para filtrar registros en función de más de una condición, 
como si desea devolver todos los clientes de España que comiencen con la letra 'G':
*/

-- EjemploObtenga su propio servidor SQL
-- Selecciona todos los clientes de España que comiencen con la letra 'G':
SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

El operador OR de SQL
La WHEREcláusula puede contener uno o más ORoperadores.

/*El ORoperador se utiliza para filtrar registros en función de más de una condición,
como si desea devolver todos los clientes de Alemania pero también los de España:*/

-- Seleccione todos los clientes de Alemania o España:

SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';


/*El operador NOT
El NOToperador se utiliza en combinación con otros operadores para obtener el resultado opuesto, 
también llamado resultado negativo.
En la declaración de selección a continuación queremos devolver todos los clientes que NO sean de España:*/

-- Seleccione sólo los clientes que NO sean de España:

SELECT * FROM Customers
WHERE NOT Country = 'Spain';
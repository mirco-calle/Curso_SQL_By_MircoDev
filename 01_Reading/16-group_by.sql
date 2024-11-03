/*La instrucción SQL GROUP BY
La GROUP BY declaración agrupa las filas que tienen los mismos valores en filas de resumen, 
como "encontrar el número de clientes en cada país".

La GROUP BY declaración se utiliza a menudo con funciones agregadas ( COUNT(), MAX(), MIN(), SUM(), AVG()) 
para agrupar el conjunto de resultados por una o más columnas.*/

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);



--agrupar filas que tienen mismos valores, se encarga de buscar algo concreto
select max(age) from users GROUP BY age

select count(age), age from users GROUP BY age

#cuenta que hay mismos valores en cada fila los agrupa y luego los ordena en forma ascendente
select count(age), age from users group by age order by age asc

select count(age), age from users where age >15 group by age order by age asc

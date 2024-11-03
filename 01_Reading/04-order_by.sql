SELECT * FROM users order by age; -- ordena la edad en orden ascendente por defecto
SELECT * FROM users order by age asc;-- ordena en forma ascendente 
SELECT * FROM users order by age desc;-- ordena en forma descendente 
select * from users where email="brais@gmail.com" order by age desc; -- seleciona todo, donde email tiene lugar, y se ordena de forma descendente
select name from users where email="brais@gmail.com" order by age desc; -- hago lo mismo que la anterior pero solamente en la fila name
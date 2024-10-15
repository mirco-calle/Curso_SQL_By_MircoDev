--agrupar filas que tienen mismos valores, se encarga de buscar algo concreto
select max(age) from users GROUP BY age

select count(age), age from users GROUP BY age

#cuenta que hay mismos valores en cada fila los agrupa y luego los ordena en forma ascendente
select count(age), age from users group by age order by age asc

select count(age), age from users where age >15 group by age order by age asc

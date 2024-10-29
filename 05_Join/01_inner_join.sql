# inner_join es un comando que nos sirve para obtener los datos comunes de ambas tablas, dos o mas tablas, nos va retornar las filas de dos o mas tablas cuando hay coicindencias
#con las siguientes lineas vamos a traer todos los datos 
SELECT * FROM users
INNER JOIN dni;
#
SELECT * FROM users
INNER JOIN dni
on users.user_id = dni.user_id;

#tendriamos lo mismo solo colocando Join
SELECT * FROM users
JOIN dni
on users.user_id = dni.user_id;

#podemos ir practicando con todo lo aprendido en el apartado Reading,
#aqui jugamos con 1 a 1 users con dni
SELECT name, dni_number FROM users
INNER JOIN dni
on users.user_id = dni.user_id
order by age asc;

#si queremos traer de 1 a muchos jugamos con users y companies
# aqui jugamos 1 a N, users con companies
select * from users
join companies
on users.company_id = companies.company_id

#aqui seleccionamos solo los nombres de las tablas
select companies.name,users.name from users
join companies
on users.company_id = companies.company_id

#aqui jugamos N a M muchos a muchos uniendo 3 tablas
select users.name, languages.name
from users
join user_languages on users.user_id=user_languages.user_id
join languages on user_languages.language_id=languages.language_id; 
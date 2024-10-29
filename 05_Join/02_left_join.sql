#todos los datos de la tabla de la izquierdaen este caso users, 
SELECT users.name,dni_number FROM users
left JOIN dni
on users.user_id = dni.user_id;

#ahora volcamos la tabla 
SELECT users.name,dni_number FROM dni
left JOIN users
on users.user_id = dni.user_id;

# aqui probamos el caso mas complejo que hicimos con el  inner join
select users.name, languages.name
from users
left join user_languages on users.user_id=user_languages.user_id
left join languages on user_languages.language_id=languages.language_id; 

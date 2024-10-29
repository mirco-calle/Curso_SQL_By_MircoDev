#probamos todo lo que hicimos con el left join.
SELECT users.name,dni_number FROM users
RIGHT JOIN dni
on users.user_id = dni.user_id;
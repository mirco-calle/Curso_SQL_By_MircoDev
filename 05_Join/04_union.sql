#en algunos base de datos al left al rigght y al full join lo encuentras con la siguiente expersion
RIGHT OUTER join 
#traemos de la izquierda, y unimos con la derecha 
SELECT users.user_id,dni.user_id from users
left join dni
on users.user_id = dni.user_id
union 
SELECT users.user_id,dni.user_id from users
right join dni
on users.user_id = dni.user_id;
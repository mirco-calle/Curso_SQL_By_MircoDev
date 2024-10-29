#si quertemos alterar, modificar un atabla

#ADD quermos aniadir un campo
alter table persons8
add surname varchar(150)

#RENAME COLUMN queremos renombrar un campo
alter table persons8
rename column surname to descripcion;

#MODIFY COLUMN queremos actualizar el tipo del campo
alter table persons8
modify column descripcion varchar(200)

#DROP COLUMN queremos eliminar un campo 
alter table persons8
drop column descripcion

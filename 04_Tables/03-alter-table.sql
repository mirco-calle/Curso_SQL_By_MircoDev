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

/*Sentencia SQL ALTER TABLE
La ALTER TABLEdeclaración se utiliza para agregar, eliminar o modificar columnas en una tabla existente.

La ALTER TABLEdeclaración también se utiliza para agregar y eliminar varias restricciones en una tabla existente.*/
El siguiente SQL agrega una columna "Correo electrónico" a la tabla "Clientes":

EjemploObtenga su propio servidor SQL
ALTER TABLE Customers
ADD Email varchar(255);
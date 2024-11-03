/*
La instrucción SQL INSERT INTO
La INSERT INTOdeclaración se utiliza para insertar nuevos registros en una tabla.

Sintaxis INSERT INTO
Es posible escribir el INSERT INTO enunciado de dos maneras:

1. Especifique los nombres de las columnas y los valores que se insertarán:
*/
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

/*2. Si va a agregar valores para todas las columnas de la tabla, 
no necesita especificar los nombres de las columnas en la consulta SQL. 
Sin embargo, asegúrese de que el orden de los valores sea el mismo que el de las columnas de la tabla. 
En este caso, la INSERT INTOsintaxis sería la siguiente:*/
INSERT INTO table_name
VALUES (value1, value2, value3, ...);

#EJEMPLOS VARIOS 
insert into users (user_id, name, surname) values(8,"maria","lopez")

# el identificador es obligatorio, lo cual si colocamos sin el nos sadra un error
insert into users (user_id, name, surname) values("Paco","Perez")

#en el siguiente ejemplo poenmos un dni al usuario 1 y al usuario etc
insert into dni (dni_number,user_id ) values(11111111,1)
insert into dni (dni_number,user_id ) values(22222222,2)
insert into dni (dni_number,user_id ) values(33333333,3);
insert into dni (dni_number) values(44444444)
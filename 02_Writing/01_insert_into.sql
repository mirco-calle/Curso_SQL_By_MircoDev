insert into users (user_id, name, surname) values(8,"maria","lopez")

# el identificador es obligatorio, lo cual si colocamos sin el nos sadra un error
insert into users (user_id, name, surname) values("Paco","Perez")

#en el siguiente ejemplo poenmos un dni al usuario 1 y al usuario etc
insert into dni (dni_number,user_id ) values(11111111,1)
insert into dni (dni_number,user_id ) values(22222222,2)
insert into dni (dni_number,user_id ) values(33333333,3);
insert into dni (dni_number) values(44444444)
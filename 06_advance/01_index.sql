#es un elemento que se puede crear en la base de datos
#estructura de datos lo que nos permite indexar los datos
create index idx_name on users(name);

#para que el indice sea unico
create unique index idx_name on users(name);

#si queremos aniadirle mas campos
create unique index idx_name_surname on users(name,surname);

#si queremos borrar un campo
drop index idx_name on users;
#RELACION 1 A 1
#primary key = es un campo qeu identifica de manera unica a cada registro en una tabla (id), el valor tiene que ser unico y no nulo
create table dni(
dni_id int auto_increment primary key, 
#auto_increment es para que yo ya no introduzca ese dato sino que automaticamente se va itroducir
dni_number int not null,
user_id int,
unique(dni_id),
foreign key(user_id) references users(user_id)
# foreign key = la clave foranea es un campo que ralciona una tabla con otra utilizando la clave primaria (primary key) de la otra tabla
)
#RELACION 1 A N
# la clave foranea es company_id la referencia es company_id
create table companies(
company_id int auto_increment primary key,
name varchar(100) not null
);
#a la tabla usuarios debemos añadir un campo con el mismo nombre de la otra tabla para que haga referencia, para añadir utilizamos en “alter” para añadir “add”luego ese campo debemos convertir en la clave foránea de la tabla principal.
alter table users
add company_id varchar(100);

#ahora queremos crear una clave foranea alterando la tabla
# al constraint le damos un mobre cualquiera en este caso fk_company
#verificar siempre el tipo de dato "int" o "varchar" ambos campos deben tener el mismo tipo de dato
alter table users 
add constraint fk_company 
foreign key(company_id) references companies(company_id)


#RELACION M A N
#primero creamos una tabla a la cual queremos hacer refernecia con usuarios
create table languages(
language_id int auto_increment primary key,
name varchar(100) not null
);
# ahora debemos crear una tabla intermedia que realacionara ambas tablas
create table user_languages(
user_language_id int auto_increment primary key,
user_id int,
language_id int,
foreign key(user_id) references users (user_id),
foreign key(language_id) references languages (language_id),
unique(user_id,language_id)
);
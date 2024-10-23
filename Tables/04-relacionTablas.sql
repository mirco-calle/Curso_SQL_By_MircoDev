#RELACION 1 A 1
create table dni(
dni_id int auto_increment primary key,
dni_number int not null,
user_id int,
unique(dni_id),
foreign key(user_id) references users(user_id)
)
#RELACION 1 A N
# la clave foranea es company_id la referencia es company_id
#a la tabla usuarios debemos añadir un campo con el mismo nombre de la otra tabla para que haga referencia, para añadir utilizamos en “alter” para añadir “add”luego ese campo debemos convertir en la clave foránea de la tabla principal.
create table companies(
company_id int auto_increment primary key,
name varchar(100) not null
);
alter table users
add company_id varchar(100);

#ahora queremos crear una clave foranea alterando la tabla
# al constraint le damos un mobre cualquiera en este cas fk_company
#verificar siempre el tipo de dato "int" o "varchar" ambos campos deben tener el mismo tipo de dato
alter table users 
add constraint fk_company 
foreign key(company_id) references companies(company_id)


#RELACION M A N
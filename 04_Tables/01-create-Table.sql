create table persons(
id int ,
name varchar(50),
age int,
email varchar(50),
created date
)
# NOT NULL (NN) creamos otra table pero con restricciones o Constrins, es decir "not null" significa que siempre deben llevar un valor
create table persons2(
id int not null,
name varchar(50) not null,
age int,
email varchar(100),
created date
)
# UNIQUE (UQ) identificador unico, es un campo que sirve para identificar de forma unica al registro que estamos guardando

create table persons3(
id int not null,
name varchar(50) not null,
age int,
email varchar(100),
created datetime,
unique(id)
)
#PRIMARY KEY (PK) una clave primaria, indica que es el indicador principal de la tabla
create table persons4(
id int not null,
name varchar(50) not null,
age int,
email varchar(100),
created datetime,
unique(id),
primary key(id)
)
#CHEK le introduce una restriccion al script de mi table de la siguiente forma "CONSTRAINT `persons5_chk_1" esto se puede observar en la pestania DDL de la info de la tabla,
#solo quiero guardar usuarios mayores de 18 anios
#no deja que ningun usuario inserte menor a 18
create table persons5(
id int not null,
name varchar(50) not null,
age int,
email varchar(100),
created datetime,
unique(id),
primary key(id), 
check(age>=18) 
)
#DEFAULT es otra restriccion, Ejm si el usuario no tien Email le voy a meter un Email por defecto
create table person6(
id int not null,
name varchar (50) not null,
age int,
email varchar(100),
created datetime default current_timestamp(),
unique(id),
primary key(id),
check(age>=18)

)
#AUTO INCREMENT Ejm en el ID queremos que se autoincremente automaticamente a medida que insertamos valores 
create table person7(
id int not null auto_increment,
name varchar (50) not null,
age int,
email varchar(100),
created datetime default current_timestamp(),
unique(id),
primary key(id),
check(age>=18)
)
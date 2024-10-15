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
#CHEK le introduce una restriccion al xcript de mi table de la siguiente forma "CONSTRAINT `persons5_chk_1" esto se puede observar en la pestania DDL de la info de la tabla
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
#un trigger es un disparador
#son instrucciones que se ejecutan automaticamente cuando ocurre un evento en la tabla
#no son consultas, sino eventos 
#ejm al querer actualizar email, el triger agarra el anterior email y lo guarda en otra Base de datos
#nos creamos una tabla
CREATE TABLE `hello_mysql`.`email_history` (
  `idemail_history_id` INT NOT NULL auto_increment,
  `user_id` INT NOT NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`idemail_history_id`),
  UNIQUE INDEX `idemail_history_id_UNIQUE` (`idemail_history_id` ASC) VISIBLE);

#creamos un TRIGGER, primero vemos la manera 
create trigger tg_email 
before/after insert/update/delete
on users

#ahora si creamos un TRIGGER, no olvidarse de crear el delimiter |
delimiter |
create trigger tg_email 
after update on users
for each row
begin
   if old.email <> new.email then 
      insert into email_history(user_id, email) 
      values (old.user_id, old.email);
   end if;
end;
delimiter |;

#ahora si quiero actualizar un dato por ejemplo el email 
update users set email = 'mirkex@gmail.com' where user_id = 1

#entonces en mi tabla email_history se guardara el anterior enail
SELECT * FROM email_history:

#eliminar un trigger 
drop Trigger tg_email;


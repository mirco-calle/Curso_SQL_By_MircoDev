--la clave no se pueden utilizar en funciones agregadas (AVERIGUAR MAS PORQUE NO SE ENTENDIO BIN)
select count(age)  from users having count(age)>3
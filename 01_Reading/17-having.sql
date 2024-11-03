--la clave no se pueden utilizar en funciones agregadas (AVERIGUAR MAS PORQUE NO SE ENTENDIO BIeN)
select count(age)  from users having count(age)>3

/*
aqui averigue:
La cláusula HAVING de SQL
La HAVING cláusula se agregó a SQL porque la WHERE palabra clave no se puede usar con funciones agregadas.

*/

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
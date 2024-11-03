
/*La sentencia SQL DELETE
La DELETEdeclaración se utiliza para eliminar registros existentes en una tabla.*/

-- Sintaxis DELETE
DELETE FROM table_name WHERE condition;


delete from users where user_id = 11

Nota: ¡Tenga cuidado al eliminar registros de una tabla! Observe la WHERE cláusula en la DELETE declaración. 
La WHERE cláusula especifica qué registro(s) se deben eliminar. 
Si omite la WHERE cláusula, se eliminarán todos los registros de la tabla.
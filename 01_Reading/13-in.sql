--comprobar que un campo tome diferentes valores y filtrarlo con los diferentes valores tomamos "in"
--el valor debe ser exactamente el valor que queremos filtrar
select * from users where name in ("brais","sara"); --es una combinacion de "where" con "in"

/*
El operador IN de SQL
El IN operador le permite especificar múltiples valores en una WHERE cláusula.

El IN operador es una abreviatura de múltiples OR condiciones.
*/

-- Ejemplo
-- Devolver todos los clientes de 'Alemania', 'Francia' o 'Reino Unido'

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');
/*La instrucción SQL BACKUP WITH DIFFERENTIAL
Una copia de seguridad diferencial solo realiza copias de seguridad de las partes de la base de datos que han cambiado desde la última 
copia de seguridad completa de la base de datos.*/

Ejemplo de BASE DE DATOS DE RESPALDO
La siguiente declaración SQL crea una copia de seguridad completa de la base de datos existente "testDB" en el disco D:

Ejemplo
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';

Consejo: Realice siempre una copia de seguridad de la base de datos en una unidad distinta a la de la base de datos real.
 De este modo, si se produce un fallo en el disco,
 no perderá el archivo de copia de seguridad junto con la base de datos.

 /*COPIA DE SEGURIDAD CON DIFERENCIAL Ejemplo
La siguiente declaración SQL crea una copia de seguridad diferencial de la base de datos "testDB":*/

Ejemplo
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak'
WITH DIFFERENTIAL;
Consejo: una copia de seguridad diferencial reduce el tiempo de copia de seguridad (ya que solo se respaldan los cambios).
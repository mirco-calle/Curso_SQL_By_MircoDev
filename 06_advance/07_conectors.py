# esto lo puede hacer cualquier lenguaje de programacion, php, javascript etc
# si no te reconoce el connector es que hay un problema de instalacion de python revisa el "pat" en las variable de entorno del equipo
import mysql.connector

def print_user(user):
    config = {
        "host":"127.0.0.1",
        "port":"3306",
        "database":"hello_mysql",
        "user":"root",
        "password":"Piposimysql123#"
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
 # esto es una manera antigua de hace un query , pero por tema de seguridad ya no se hace asi   
    #query = "SELECT * FROM users where name= '"+user+"';"
#la forma correcta de hacer es: realizar sustituciones dentro de la query y buscar el mecanismo que tenga el conector para que el parametro "user"
#lo trate como un parametro y no como una cadena de texto, 
    query = "SELECT * FROM users where name=%s;"
    print(query)
    #se le pasa el user como una tupla de un unico elemento "(user)",asi nos evitamos de ataques maliciosos
    #SQL INYECTION
    cursor.execute(query, (user,))
    result = cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()
print_user('Brais')
#ataque malicioseo en cadena de texto
#print_user("'; UPDATE user......")
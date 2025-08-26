import mysql.connector

def print_user(user):

    config ={
        "host": "localhost",
        "port": "3306",
        "database":"hello_mysql",
        "user":"root",
        "password":"1234qwer",
        #"auth_plugin": "mysql_native_password"
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = "SELECT * FROM users WHERE name =%s; "
    print(query)
    cursor.execute(query,(user,))
    result = cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()

print_user("Dexen")
#print_user("'; UPDATE users SET age = 17 WHERE user_id = 444;")
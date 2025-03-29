import mysql.connector
from mysql.connector import errorcode

# Configuration de la connexion à MySQL
config = {
    "host": "localhost",
    "user": "root",  # Remplace par ton utilisateur MySQL
    "password": "your_password"  # Remplace par ton mot de passe MySQL
}

try:
    # Connexion au serveur MySQL
    conn = mysql.connector.connect(**config)
    cursor = conn.cursor()

    # Création de la base de données
    try:
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")
    except mysql.connector.Error as err:
        print(f"Error creating database: {err}")

    # Fermeture du curseur et de la connexion
    cursor.close()
    conn.close()

except mysql.connector.Error as err:
    print(f"Failed to connect to MySQL: {err}")

import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Establish connection to MySQL server
        connection = mysql.connector.connect(
            host='localhost',  # Change to your MySQL host if not localhost
            user='root',       # Change to your MySQL username
            password='your_password'  # Change to your MySQL password
        )

        # Check if connection is successful
        if connection.is_connected():
            cursor = connection.cursor()

            # SQL command to create database if it does not exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

            # Commit the transaction
            connection.commit()

            # Print success message
            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        # Handle errors during connection or execution
        print(f"Error: {e}")

    finally:
        # Ensure the database connection is closed properly
        if connection.is_connected():
            cursor.close()
            connection.close()

if __name__ == "__main__":
    create_database()

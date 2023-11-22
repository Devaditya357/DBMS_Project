import cx_Oracle

class DatabaseConnector:
    def __init__(self, username, password, database_url):
        self.username = username
        self.password = password
        self.database_url = database_url
        self.connection = None
        self.cursor = None

    def connect(self):
        try:
            self.connection = cx_Oracle.connect(self.username, self.password, self.database_url)
            self.cursor = self.connection.cursor()
            print("Connected to the Oracle database.")
        except cx_Oracle.Error as error:
            print(f"Error: {error}")

    def disconnect(self):
        try:
            if self.cursor:
                self.cursor.close()
            if self.connection:
                self.connection.close()
            print("Disconnected from the Oracle database.")
        except cx_Oracle.Error as error:
            print(f"Error: {error}")

    def execute_query(self, query):
        try:
            self.cursor.execute(query)
            results = self.cursor.fetchall()
            return results
        except cx_Oracle.Error as error:
            print(f"Error executing query: {error}")
            return None

def main():
    # Initialize the database connector
    db_connector = DatabaseConnector("your_username", "your_password", "localhost/orcl")

    try:
        # Connect to the database
        db_connector.connect()

        # Execute a sample query
        query = "SELECT * FROM Vehicles WHERE Brand = 'Toyota'"
        results = db_connector.execute_query(query)

        # Print the results
        if results:
            for row in results:
                print(row)
    finally:
        # Disconnect from the database in a finally block to ensure it happens even if an exception occurs
        db_connector.disconnect()

if __name__ == "__main__":
    main()

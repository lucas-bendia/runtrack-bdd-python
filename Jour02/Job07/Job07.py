import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="azerty1234",
    database="job07"
)

cursor = mydb.cursor()

class Salarie:
    def __init__(self, mydb, cursor):
        self.mydb = mydb
        self.cursor = cursor

    def delete(self):
        self.cursor.execute("DELETE FROM employe WHERE nom = 'fefe'")
        self.mydb.commit() # met à jour la base de données en temps réel

    def add(self):
        self.cursor.execute("INSERT INTO employe (nom, prenom, salaire, id_service) values ('Bauer', 'Jack', 6000.1, 3)")
        self.mydb.commit() # met à jour la base de données en temps réel

    def show(self):
        self.cursor.execute("SELECT * from EMPLOYE")
        results = self.cursor.fetchall()
        for row in results: # affiche le resultat ligne par ligne pour lire + facilement
            print(row)

salarie = Salarie(mydb, cursor)
salarie.delete()
salarie.add()
salarie.show()

cursor.close()
mydb.close()
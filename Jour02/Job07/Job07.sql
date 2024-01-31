mysql> create table employe (
    -> id int not null auto_increment primary key,
    -> nom varchar(255),
    -> prenom varchar(255),
    -> salaire decimal,
    -> id_service int );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into employe (nom, prenom, salaire, id_service)
    -> values
    -> ('jean', 'jacque', 1200, 1),
    -> ('dupont', 'marie', 7000, 2),
    -> ('ive', 'marc', 9000, 3),
    -> ('marcus', 'lucile', 3000, 4);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> show * from employe;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '* from employe' at line 1
mysql> SELECT * FROM employe;
+----+--------+--------+---------+------------+
| id | nom    | prenom | salaire | id_service |
+----+--------+--------+---------+------------+
|  1 | jean   | jacque |    1200 |          1 |
|  2 | dupont | marie  |    7000 |          2 |
|  3 | ive    | marc   |    9000 |          3 |
|  4 | marcus | lucile |    3000 |          4 |
+----+--------+--------+---------+------------+


mysql> SELECT * FROM employe WHERE salaire > 3000;
+----+--------+--------+---------+------------+
| id | nom    | prenom | salaire | id_service |
+----+--------+--------+---------+------------+
|  2 | dupont | marie  |    7000 |          2 |
|  3 | ive    | marc   |    9000 |          3 |
+----+--------+--------+---------+------------+



mysql> create table service (
    -> id int not null auto_increment primary key,
    -> nom varchar(255) );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into service (nom)
    -> values
    -> ('Comptabilité'),
    -> ('Développement'),
    -> ('Marketing'),
    -> ('Direction');

mysql> SELECT * FROM service;
+----+---------------+
| id | nom           |
+----+---------------+
|  1 | Comptabilité  |
|  2 | Développement |
|  3 | Marketing     |
|  4 | Direction     |
+----+---------------+
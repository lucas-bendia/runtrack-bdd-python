 create table etage (
    -> id int not null auto_increment primary key,
    -> nom varchar(255),
    -> numero int,
    -> superficie int );

mysql> create table salle (
    -> id int not null auto_increment primary key,
    -> nom varchar(255),
    -> id_etage int,
    -> capacite int );
    
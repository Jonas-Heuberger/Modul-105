/* Sie kennen die Befehle,die sie brauchen,
   um eine Datenbankstruktur zu erstellen,
   zu löschen oder zu ändern.*/

	mysql –u <username> -p

create database training;
drop database training;
show databases;
use training;

create table training (
id int auto_increment not null primary key,
firstname varchar(255),
lastname varchar(255)
);




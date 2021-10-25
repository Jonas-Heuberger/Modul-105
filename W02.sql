/*Übung 1*/

create DATABASE maler;

show DATABASES;

use  maler;

create table maler (Id INT primary key not null auto_increment, 
name varchar(25), wohnort varchar(20), gebdat date
);
 
show tables from maler;

desc maler;



/* Übung 2 */

create table tbl_preson (
  PID INTEGER PRIMARY KEY,
  nname VARCHAR(50),
  vname VARCHAR(50)
);

create table tbl_ort (
  Ort_ID INTEGER PRIMARY KEY,
  ort VARCHAR(50),
  plz CHAR(4)
);

create table tbl_adress_art (
  AAID INTEGER PRIMARY KEY,
  AdressArt VARCHAR(50)
);

---------------------------------

create table tbl_adresse (
  AID INTEGER PRIMARY KEY,
  AAID INT,
  Ort_ID INT,
  PID INT,
  FOREIGN KEY (AAID) REFERENCES tbl_adress_art(AAID),
  FOREIGN KEY (Ort_ID) REFERENCES tbl_ort(Ort_ID),
  FOREIGN KEY (PID) REFERENCES tbl_preson(PID),
  adresse VARCHAR(50)
);

---------------------------------
DESC tbl_preson;
DESC tbl_ort;
DESC tbl_adress_art;
DESC tbl_adresse;
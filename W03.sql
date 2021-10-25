/* ÜBUNG 1 */

create DATABASE M105_W03;

CREATE TABLE IF NOT EXISTS tasks (
    task_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATE,
    priority TINYINT NOT NULL DEFAULT 3,
    description TEXT,
    PRIMARY KEY (task_id)
);

 /* Aufgabe 1 */
  1 insert into tasks (title, start_date, due_date, priority, description) Values ('Lerne Eingabe in MySQL', NULL, NULL, 1, NULL);

/* Aufgabe 2 */
insert into tasks (title, start_date, due_date, priority, description) Values ('Verstehen des DEFAULT-Schlüsselworts in der INSERT-Anweisung', NULL, NULL, DEFAULT, NULL);

/* Aufgabe 3 */
insert into tasks (title, start_date, due_date) Values ( 'Benutze das Datum', DATE '2020-9-01', DATE '2020-9-15');

/* Aufgabe 4 */
insert into tasks (title, priority, start_date, due_date) Values ('hello world', 2,  now(), now());

/* Aufgabe 5 */
Er zählt weiter

/* Aufgabe 6 */
insert into tasks (title, priorit) Values ('My first task', 1), ('It is the second task',2), ('This is the third task of the week',3);

select * from tasks;

delete from tasks where task_id = 1;


/* ÜBUNG 2 */

/* Aufgabe 1 */

	CREATE USER 'jubberwoky'@'localhost' IDENTIFIED BY 'meinpasswort';
    GRANT ALL PRIVILEGES ON * . * TO 'jubberwoky'@'localhost';
    FLUSH PRIVILEGES;
    SHOW GRANTS FOR 'jubberwoky'@'localhost';



/* Aufgabe 2 */
	REVOKE ALL PRIVILEGES ON *.* FROM 'jubberwoky'@'localhost';
        GRANT select ON * . * TO 'jubberwoky'@'localhost';
        	FLUSH PRIVILEGES;
            SHOW GRANTS FOR 'jubberwoky'@'localhost';
        	REVOKE type_of_permission ON database_name.table_name FROM 'jubberwoky'@'localhost';
            FLUSH PRIVILEGES;
            SHOW GRANTS FOR 'jubberwoky'@'localhost';

/* Aufgabe 3 */
create USER 'john'@' localhost' IDENTIFIED BY 'turnitaround';
GRANT SELECT, INSERT ON *.* TO 'john'@'localhost';
        	FLUSH PRIVILEGES;
            	SHOW GRANTS FOR 'john'@'localhost';


/* Aufgabe 4 */
RENAME USER 'john'@'localhost'
TO 'Gerald'@'localhost';
        	FLUSH PRIVILEGES;
            	SHOW GRANTS FOR 'Gerald'@'localhost';

/* ÜBUNG */
 CREATE TABLE parent 
(
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(id);
)   ENGINE=INNODB;
	
CREATE TABLE child 
(
  id INT, 
  parent_id INT,
  FOREIGN KEY(parent_id) REFERENCES parent(id)
) ENGINE=INNODB;





create table costumers(
    id INT auto_increment primary key CONSTRAINT,
    Last Name VARCHAR(255) not null ,
    First Name VARCHAR(255) not null ,
    FOREIGN KEY (id) REFERENCES orders(cust_id),
);

create table orders(
id int primary key auto_increment ,
cust_id int not null ,
item VARCHAR(255) not null ,
Qty int not null 
);
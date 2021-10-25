Data Definition Language DDL

Datenbank anlegen
CREATE DATABASE [IF NOT EXISTS] db_name;

Datenbank verwenden
USE db_name; //Datenbank

löschen
DROP DATABASE [IF EXISTS] db_name; 

Bestehende Datenbanken anzeigen
SHOW DATABASES;

Tabelle anlegen
CREATE TABLE [IF NOT EXISTS] tbl_name (create_definition,...) ;

CREATE Definition:
    column_definition
| PRIMARY KEY (col_name,...)
| [CONSTRAINT [fk_name]] FOREIGN KEY (col_name,...) reference_definition

column_definition:
    col_name type [NOT NULL | NULL] [DEFAULT default_value]
        [AUTO_INCREMENT] [PRIMARY KEY]

type:
| TINYINT[(length)] [UNSIGNED] [ZEROFILL]
| SMALLINT[(length)] [UNSIGNED] [ZEROFILL] | MEDIUMINT[(length)] [UNSIGNED] [ZEROFILL] 
| INT[(length)] [UNSIGNED] [ZEROFILL]
| INTEGER[(length)] [UNSIGNED] [ZEROFILL]
| BIGINT[(length)] [UNSIGNED] [ZEROFILL]
| REAL[(length,decimals)] [UNSIGNED] [ZEROFILL]
| DOUBLE[(length,decimals)] [UNSIGNED] [ZEROFILL] 
| FLOAT[(length,decimals)] [UNSIGNED] [ZEROFILL] 
| DECIMAL(length,decimals) [UNSIGNED] [ZEROFILL] 
| NUMERIC(length,decimals) [UNSIGNED] [ZEROFILL] 
| DATE
| TIME
| TIMESTAMP
| DATETIME
| YEAR
| CHAR(length) [BINARY | ASCII | UNICODE]
| VARCHAR(length) [BINARY]
| BINARY(length)
   create_definition
 column_definition
| VARBINARY(length) | TINYBLOB
| BLOB
| MEDIUMBLOB
| LONGBLOB
| TINYTEXT [BINARY]
| TEXT [BINARY]
| MEDIUMTEXT [BINARY]
| LONGTEXT [BINARY]
| ENUM(value1,value2,value3,...)
| VARBINARY(length) 
| TINYBLOB
| BLOB
| MEDIUMBLOB
| LONGBLOB
| TINYTEXT [BINARY]
| TEXT [BINARY]
| MEDIUMTEXT [BINARY]
| LONGTEXT [BINARY]
| ENUM(value1,value2,value3,...)

reference_definition:
REFERENCES tbl_name (col_name,...)
               [ON DELETE                 ]
               [ON UPDATE   
                             ]
reference_option:
    RESTRICT | CASCADE | SET NULL | SET DEFAULT | NO ACTION

Tabelle ändern

ALTER TABLE tbl_name
    alter_specification [, alter_specification] ... ;

alter_specification:
| ADD [COLUMN]
| ADD [COLUMN] ( ,...)
| ADD PRIMARY KEY (col_name,...)
| ADD [CONSTRAINT [fk_name]] FOREIGN KEY (col_name,...) reference_definition | CHANGE [COLUMN] old_col_name
| MODIFY [COLUMN]
| DROP [COLUMN] col_name
| DROP PRIMARY KEY
| DROP FOREIGN KEY fk_name
| RENAME [TO] new_tbl_name

Tabellen in der aktuellen Datenbank anzeigen
SHOW TABLES;

Beschreibung einer Tabelle anzeigen
DESC tbl_name;

SQL-Befehl anzeigen, mit dem eine Tabelle erstellt wurde
SHOW CREATE TABLE tbl_name; 

Tabelle löschen
DROP TABLE [IF EXISTS] tbl_name; 

letzte Fehler/Warnungen anzeigen

SHOW ERRORS;
SHOW WARNINGS;

Data Manipulation Language DML

Daten einfügen

INSERT [INTO] tbl_name [(col_name, ...)] VALUES (value, ...) [, (...) ...] ;

Daten verändern
UPDATE tbl_name [[AS] tbl_alias]
    SET = value [, col_expr = value ...] [WHERE ] ;

Datensätze in einer Tabelle löschen
DELETE FROM tbl_name [[AS] tbl_alias] [WHERE where_condition] ;

oder

TRUNCATE [TABLE] tbl_name;
 where_condition: :  
    col_expr operator-value [logical_operator col_expr operator-value] ...

operator-value
operator value | LIKE pattern | BETWEEN value AND value | IN (value [, ...])

pattern:
    Zeichenkette, die auch folgende Platzhalter enthalten kann:
    _ steht für 1 beliebiges Zeichen
    % steht für eine beliebige Zeichenfolge mit 0 oder mehr Zeichen

operator:
< | > | = | <> | >= | <= | IS [NOT]

logical_operator: 
AND | OR

tbl_expr:
    tbl_name | tbl_alias

col_expr
    [tbl expr.] col_name

Massenimport über eine Datei
LOAD DATA
    [LOCAL]
    INFILE 'file_name' 
    INTO TABLE tbl_name 
    [CHARACTER SET charset_name]
    [FIELDS TERMINATED BY controlstring]
    [LINES TERMINATED BY controlstring]
    [IGNORE number LINES] 
    [(col_name,...)] ;

charset_name:
    ascii | cp850 | cp852 | latin1 | latin2 | utf8

Beispiele für controlstring (beachten Sie die Hochkommas):
'∖r∖n' Carriage Return/Line Feed (üblicher Zeilenumbruch in Windows) 
'∖n' Line Feed (üblicher Zeilenumbruch in Linux)
'∖t' Tabulator

Data Query Language DQL

Daten abfragen
SELECT
    [DISTINCT]
    select_expr, ...
    [FROM tbl_name [[AS] tbl_alias]
        [outer_join | inner_join | cross_join]...
        [WHERE where_condition]
        [GROUP BY col_expr]
        [HAVING having_condition]
        [ORDER BY col_expr []]
        [LIMIT anzahl_datensätze]

    ]

[INTO OUTFILE 'file_name'
        [CHARACTER SET charset_name]
        [FIELDS TERMINATED BY controlstring]
        [LINES TERMINATED BY controlstring]
    ] ;

outer_join
|
| cross_join] ...
col_expr
inner_join
 where_condition
]
, ... ]
 col_expr
 having_condition
     ]
[ASC | DESC], ...]
  charset_name
 [INNER] JOIN tbl_name [[AS] tbl_alias] ON join_condition cross_join:

select_expr:
  * | [[AS] alias] | aggregatfunktion
    | round( [, nachkommastellen] ) | ceiling(col_expr) | pi() | sqrt(value | ) | rand()
    | sqrt(value | col_expr) | rand()



  
  col_ expr
 col_expr
 aggregatfunktion
        min(col_expr
    | count(* |
: inner_join:
:
) | max(col_expr) | avg(col_expr) | sum(col_expr)
)
[OUTER] JOIN tbl_name [[AS] tbl_alias] ON join_condition
 outer_join
col_expr
col_expr
   outer_join_expr
   CROSS JOIN tbl_name [[AS] tbl_alias] outer_join_expr:
  join_condition
  col_expr
 having_condition
   operator-value
 operator-value
where_condition
 [
LEFT | RIGHT | FULL
         :
= col_expr :
|
] ...
logical_operator
aggregatfunktion
aggregatfunktion

Backup
Tabelle(n) einer Datenbank sichern
mysqldump -u user_name db_name [tbl_name ...] > file_name

komplette Datenbank(en) sichern
mysqldump -u user_name --databases db_name ... > file_name

Restore
Wiederherstellen mit einer Datei, die nur Tabellen enthält 
mysql -u user_name db_name < file_name

Wiederherstellen mit einer Datei, die Datenbanken enthält
mysql -u user_name < file_name

Normalisierung
1. Normalform
    Eine Tabelle liegt in der ersten Normalform vor, wenn
        • jeder Attributwert eine atomare, nicht weiter zerlegbare Dateneinheit ist.

2. Normalform
    Eine Tabelle liegt in der zweiten Normalform vor, wenn:
        • sie in der 1NF ist
        • jedes Nichtschlüsselattribut voll funktional abhängig vom Primärschlüssel
          ist (abhängig vom gesamten Primärschlüssel)

3. Normalform
    Eine Tabelle liegt in der dritten Normalform vor, wenn:
        • sie in der 2NF ist
        • jedes Nichtschlüsselattribut nicht transitiv (indirekt) abhängig vom
          Primärschlüssel ist

Klammernotation
   1. Tabelle wird als Vektor dargestellt (ohne Datentypen)
   2. Primärschlüssel werden unterstrichen
   3. Fremdschlüssel werden durch [ ] markiert









select_expr:
    * | col_expr [[AS alias] | aggregatfunktion
    | round col_expr [, nachkommastellen] ) | ceiling (col_expr) | pi()
 

 col_expr
 aggregatfunktion:
min(
    | count(* |
: inner_join:
:
) | max(col_expr) | avg(col_expr) | sum(col_expr)
)
[OUTER] JOIN tbl_name [[AS] tbl_alias] ON join_condition
outer_join
col_expr
col_expr
  
outer_join_expr
CROSS JOIN tbl_name [[AS] tbl_alias] outer_join_expr:
 join_condition
 
col_expr
 having_condition
  
operator-value
operator-value
where_condition
 [
LEFT | RIGHT | FULL
         :
= col_expr :
|
] ...
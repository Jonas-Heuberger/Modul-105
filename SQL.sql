show databases;

create database idk;

use idk;

create table student (
    id int primary key auto_increment not null,
    name varchar(20) not null,
    major varchar(20) not null
);

show tables from idk;
select * from student;
desc student;
show student;



select * from student order by name asc;


insert into student (name, major) values ('Anna', 'alsjfdaj'), ('bbbbbbb', 'bbbbbbb'), ('ccccccc', 'ccccccccc');

alter table student add firstname varchar(20) not null;
alter table student drop firstname;

insert into student values (
                            1,
                            'asfasdf',
                            'info',
                            'sdfadsfasa'
                           );
update student set name = 'safsd'
where id = 1;

create table numbers(
  id int primary key not null auto_increment,
  num int
);

insert into numbers values (
                    1,
                    4
);

select numbers.id + numbers.num
from numbers;

select * from numbers;

insert into numbers (num)values (
                            4
                           );
update numbers set num = 5 where id = 2;

select *
from numbers limit 1, 5;

insert into numbers (num) values (4), (6), (10);

insert into numbers (num) values (10), (10), (10);

select  num from numbers order by num asc;

select * from numbers where num IN (4, 10);

select * from numbers where num NOT IN (4, 10);

select avg (num) from numbers;

select upper (name) from student;

select lower (name) from student;

select sum (num) from numbers;

SELECT num FROM numbers
WHERE  num > 4
ORDER BY num desc;

SELECT num FROM numbers
WHERE  num > (SELECT avg(num) FROM numbers)
ORDER BY num DESC;

select min(num) from numbers;

ALTER TABLE student
		CHANGE major hauptfach
		    VARCHAR(30);

select * from student;

alter table student add (klasse varchar(30));

alter table student drop klasse;
















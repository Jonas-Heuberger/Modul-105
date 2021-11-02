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

alter table student add firstname varchar(20) not null;
alter table student drop firstname;

insert into student values (
                            1,
                            'asfasdf',
                            'info',
                            'sdfadsfasa'
                           );



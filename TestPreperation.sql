create database naruto;

use naruto;

create table karo (
    id int auto_increment primary key,
                  characters varchar (50),
);

insert into karo(characters) VALUES ('Sasuke'), ('lol');

update karo set characters = 'Lenis' where characters = 'Penis';

select characters from karo;
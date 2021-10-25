-- 1
use firma;
select * from persdat;

--2
select * from persdat where abtnr = 2;

--3
select * from persdat where gehalt > 4500;

--4
select * from vwgrade;

select * from fmitglieder;

select * from fmitglieder where vwgrad = "f";

--5
select * from auftrag;
select * from auftrag order by aufwert desc;

--6
select * from abteilg;
select * from abteilg order by abtname asc;

--7
select * from persdat where (eintritt >= '1984-01-01') and (eintritt <= '1985-12-31'); -- Datum in Hochkommas ''


-- Aufgabe 2

--1
select * from employees;
select * from employees where first_name = "Basil";


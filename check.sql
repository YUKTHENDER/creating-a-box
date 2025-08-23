create database nani ;
use nani;
create table nani (
sid int not null,
firstname varchar(20) not null,
lastname varchar(20) not null,
age int,
check(age<=20)
);

insert into nani (sid,firstname,lastname,age)values
(1,'nani','reddy',20),
(2,'vivek','chary',19),
(3,'mani','nayak',20),
(4,'rahul','chary',18),
(5,'naveen','chary',20);
select * from nani;

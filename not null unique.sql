create database work;
show databases;
use work;
CREATE TABLE Persons (
	sno int unique not null,
    LastName varchar(55) not null,
    FirstName varchar(55) not null,
    Address varchar(55) unique not null,
    City varchar(55) not null unique,
    pmno long not null
);
insert into Persons(sno,LastName,FirstName,Address,City,pmno) values
(1,'nani','reddy','telangana','mahabubnagar',9381537427),
(2,'malli','reddy','andraprasad','kurnool',9441301973);
select * from persons;




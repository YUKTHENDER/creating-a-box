create database nani;
use  nani;
create table category (
cid int primary key,
cname varchar(30) not null,
cdes varchar(30) not null
);

insert into category value (101,'electronics','good quality');
insert into category value (102,'furniture','good quality');
insert into category value (103,'mobiles','good quality');
select * from category;

create table reddy (
rid int primary key,
rname varchar(30) not null,
rdes varchar(30) not null,
cid int not null,
foreign key (cid) references category (Cid)
on delete cascade on update cascade
);

insert into reddy value 
(401,'smart mobiles','good',101),
(402,'smartwatch','better',102),
(403,'laptops','better',103);
select * from reddy;

delete from category where cid=101;


update category set cid=101 where cid=103;
create table suman (
sid int primary key,
sname varchar(30) not null,
sdes varchar(30) not null,
rid int not null,
foreign key (rid) references reddy (rid)
);

insert into suman value
(301,'keyboards','better',402),
(302,'computers','nice',403),
(303,'cpu','good',402);
select * from suman;



create DATABASE ORG123;
SHOW DATABASES;
USE ORG123;
create TABLE Worker (
	WORKER_ID INT PRIMARY KEY,
	FIRST_NAME varchar(25) not null,
	LAST_NAME varchar(25) not null,
	SALARY INT not null,
	DEPARTMENT varchar(25) not null
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, 'HR'),
		(002, 'Niharika', 'Verma', 80000, 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        select * from worker;
        
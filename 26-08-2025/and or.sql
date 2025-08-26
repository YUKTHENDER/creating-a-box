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
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, 'HR'),
		(002, 'Niharika', 'Verma', 80000, 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, 'HR'),
		(004, 'Amitabh', 'Singh', 500000, 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, 'Account'),
		(007, 'Satish', 'Kumar', 75000, 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, 'Admin');
        select * from worker;
        select * from worker where department='HR' and salary>=100000;
     select * from worker where department='account' and salary=75000;
     select * from worker where department='admin'and salary=100000;
     select * from worker where department='admin' and salary<=500000;
     select * from worker where department='admin' and salary>100000;
     select * from worker where department='account' and salary<100000;
     select * from worker where department='account' and salary=200000;
	select * from worker where WORKER_ID<=4 or department='admin';
    select FIRST_NAME from worker where  WORKER_ID in (1,6,3,7);
    select DEPARTMENT from worker where  WORKER_ID not in (2,4,6,3,8);
    select * from worker
    where salary between 100000 and 400000;
     select * from worker
    where salary not between 200000 and 500000;
    select * from worker
    where WORKER_ID not between 5 and 8;
    
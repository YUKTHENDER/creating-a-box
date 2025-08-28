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
        select * from worker order by salary asc;
        select department,salary from worker where department='admin' order by salary asc;
        select department, count(department) from worker group by department order by count(department) desc;
        select count(department) from worker where department not in('hr','admin');
        select department, max(salary) from worker group by department;
SELECT * FROM Worker
ORDER BY WORKER_ID
LIMIT 4 OFFSET 4;  

        
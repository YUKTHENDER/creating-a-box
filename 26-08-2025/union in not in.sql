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
        select FIRST_NAME from worker where department not in ('HR','Admin') and salary between 70000 and 300000;
        select FIRST_NAME from worker where FIRST_NAME like 'v_%' and salary >=200000;
        select * from worker where department not in ('admin') and salary <100000;
        select min(salary) as lowersalaryperson from worker;
        select max(salary) as highersalaryperson from worker;
        select count(first_name) as countworker from worker;
        select sum(salary) as totalsalary from worker;
        select avg(salary) as averagesalary from worker;
        select avg(Salary) from worker where department='admin';
        select sum(salary) FROM worker where department ='admin' or department ='Hr';
        select count(FIRST_NAME) from worker where FIRST_NAME LIKE 'V_%';
        select sum(salary) from worker where salary between 50000 and 200000;
        select FIRST_NAME from worker
        union 
       select LAST_NAME from worker;  
       select WORKER_ID, FIRST_NAME , salary,
       case
       when salary >=300000 then 'rich'
       when salary>=100000 and salary<=300000 then 'middle class'
       else 'poor'
       end
       as statusonthesalary
       from worker
	
        
        
        
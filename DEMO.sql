create database DEMO;

create table EMP
(EID varchar(10),
EMP_NAME varchar(30),
EMP_ADDRESS varchar(30),
CITY varchar(20),
PHONE_NO varchar(10),
EMAIL varchar(20));

insert into EMP values
('E0001', 'Ashish', 'G-112', 'Uttam Nagar', '9856271935', 'ashish@gmail.com');

select * from EMP

insert into EMP values
('E0002', 'Robert', 'E-52', 'Janakpuri', '9528263258', 'robert@gmail.com'),
('E0003', 'Lesa', 'A-109', 'Subhash Nagar', '9294616856', 'lesa@gmail.com'),
('E0004', 'Rajni', 'C-21', 'Uttam Nagar', '9784662364', 'Rajni@gmail.com'),
('E0005', 'Subhash', 'B-405', 'Gurgoan', '9467253159', 'subhash@gmail.com'),
('E0006', 'Sachin', 'G-111', 'Janakpuri', '9856251266', 'sachin@gmail.com'),
('E0007', 'Rahul', 'K-20', 'Uttam Nagar', '9516234688', 'rahul@gmail.com'),
('E0008', 'Sham', 'L-112', 'Gurgoan', '9122335946', 'sham@gmail.com'),
('E0009', 'Diksha', 'E-1404', 'Gurgoan', '9815238835', 'diksha@gmail.com'),
('E00010', 'Raj', 'G-22', 'Uttam Nagar', '9856971935', 'raj@gmail.com');

use demo;

create table EMP_SAL
(EID varchar(10),
DEPT varchar(30),
DESI varchar(30),
DOJ date,
SALARY int);

select * from EMP_SAL;

insert into EMP_SAL values
('E0001', 'Admin', 'Manager', '2010-01-30', '50000');
insert into EMP_SAL values
('E0002', 'Dev', 'Developer', '2019-02-12', '30000'),
('E0003', 'Admin', 'Manager', '2013-11-13', '45000'),
('E0004', 'HR', 'Recruiter', '2020-06-19', '29000'),
('E0005', 'Dev', 'Developer', '2020-01-31', '30000'),
('E0006', 'Analyst', 'Analyst', '2019-02-12', '40000'),
('E0007', 'Analyst', 'Analyst', '2018-08-15', '51000'),
('E0008', 'HR', 'Recruiter', '2013-11-13', '43000'),
('E0009', 'Dev', 'Developer', '2020-01-31', '30000'),
('E00010', 'Analyst', 'Analyst', '2019-02-12', '40000');

update EMP
set EMP_NAME = 'Raj Verma'
where EID = 'E00010';

select * from emp where emp_name like '%Sharma%';

select * from EMP_SAL where DESI = 'manager';

update EMP_SAL
set SALARY = SALARY * 1.10
where DESI = 'manager';

use demo;

select * from emp;
select * from emp_sal;

update EMP_SAL
set desi = 'Java Developer'
where eid = 'E0009';

select distinct dept from emp_sal;
select count(distinct dept) from emp_sal;

select * from EMP_SAL order by SALARY desc;
select * from EMP_SAL order by SALARY;

select dept, count(eid) from EMP_SAL group by dept;

select dept, sum(salary) from EMP_SAL group by dept;

select dept, desi, count(eid) from EMP_SAL group by dept, desi;

select dept, count(eid), sum(salary) from EMP_SAL group by dept;

select dept, sum(salary) as Total_salary 
from EMP_SAL 
group by dept 
order by Total_salary desc;

select dept, sum(salary) 
from EMP_SAL 
group  by dept 
having sum(salary) > 100000;

select EMP.EID, EMP.EMP_NAME, EMP_SAL.SALARY
from EMP join EMP_SAL 
on EMP.EID = EMP_SAL.EID;


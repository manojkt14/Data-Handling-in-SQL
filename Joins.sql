CREATE TABLE employees2 (
    empid int,
    ename varchar(100),
    city varchar(100),
    department varchar(100),
    salary int,
    join_date date,
    dob date
);

SELECT * FROM employees2;

insert into employees2(empid,ename,city,department,salary,join_date,dob)
values	(101,'kiran','hyderabad','it',90000,'2022-01-01','1994-05-01'),
		(102,'prasad','goa','HR',40000,'2022-02-04','1992-01-18'),
		(103,'rakesh','chennai','Others',50000,'2022-05-05','1993-06-05'),
		(104,'Rajesh','hyderabad','it',60000,'2022-08-06','1996-02-03')
		


select
sum(salary)
from employees2;

select
sum(salary),city
from employees2 WHERE city='hyderabad' group by city

select
sum(salary),city
from employees2 group by city

select
sum(salary),city
from employees2 group by city having sum(salary)>60000

select
sum(salary),city
from employees2 group by city order by salary desc

select
sum(salary),city
from employees2 group by city order by salary asc

SELECT * FROM employees2 order by empid desc;

SELECT length(empid) from employees2;

select salary from employees2 order by salary desc;

select max(salary) from employees2 having max(salary)<90000

SELECT empid, ename from(
SELECT * FROM employees2) table1


SELECT * FROM employees

select emp_id, emp_name from (select * from employees) table1


select max(salary) as second_highest_salary

from employees2

where salary < (SELECT max(salary) from employees2)


select max(salary) as third_highest_salary

from employees2

where salary < (SELECT max(salary) from employees2

where salary < (SELECT max(salary) from employees2))


SELECT * FROM employee

select DISTINCT city from employee

select city,(select distinct city from managers) as emp_city_name

from employee


----------------------------------------------------------------------
create table department(dept_id int, dept_name varchar(100));

insert into department (dept_id,dept_name)
values	(101,'Information Technology'),
		(102,'Human Resources');
	
insert into department (dept_id,dept_name)
values	(106,'Finance');

SELECT * FROM department 

SELECT * FROM employees2

Join ---- Inner Join
-------------------------
select t1.empid,t2.dept_name,t1.dob 
from employees2 as t1 
inner join department as t2 on t1.empid=t2.dept_id

Join ---- Left Join
-------------------------
select t1.empid,t2.dept_name,t1.dob from employees2 as t1 left join department as t2 on t1.empid=t2.dept_id


select t1.empid,t2.dept_name,t1.dob 

from employees2 as t1 

left join department as t2 on t1.empid=t2.dept_id

where t1.empid=t2.dept_id 
 or
where t2.dept_id is not null

insert into department (dept_id,dept_name)
values(105,'Retail')

SELECT * FROM department 

Join ---- Right Join
-------------------------
select t1.empid,t2.dept_name,t1.dob from employees2 as t1 right join department as t2 on t1.empid=t2.dept_id

Join ---- full Join
-------------------------
select t1.empid,t2.dept_name,t1.dob 
from employees2 as t1 
full join department as t2 on t1.empid=t2.dept_id

Join ---- cross Join just multiply records from department and employees table 4*3=12 records will come
-------------------------
select t1.empid,t2.dept_name,t1.dob from employees2 as t1 cross join department as t2












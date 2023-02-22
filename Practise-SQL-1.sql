/*  To create a new table:*/

create database manoj;

CREATE TABLE college(id INT AUTO_INCREMENT, 
					name VARCHAR(50), 
					age INT, PRIMARY KEY(id));

/*  To view all tables in a database:*/
SHOW TABLES;

/* To view structure of a table:*/
DESCRIBE table_name;

DESCRIBE college;

/* To add a new column inside a table:*/
ALTER TABLE college ADD gender VARCHAR(10);

/* To add multiple columns to a table:*/
ALTER TABLE college 
	ADD COLUMN phone int;
	ADD city varchar(10);

ALTER TABLE college 
	ADD dateofbirth date;
	ADD email_id varchar(25);

/*To modify a column in a table:*/
ALTER TABLE college MODIFY contact VARCHAR(25);

/*To rename a table:*/
ALTER TABLE college RENAME TO studentsdata;

/*To view recoords in a table:*/
SELECT * FROM studentsdata;

ALTER TABLE studentsdata
	DROP COLUMN dateofbirth;

ALTER TABLE studentsdata
	DROP COLUMN phone;

/* To insert a record into a table:*/
INSERT INTO studentsdata VALUES(102,'Shiva',25,'Male','Chennai','9874563210');

/* To insert mutiple records into a table:*/
INSERT INTO studentsdata(id,name,age,gender,city,contact) 
	VALUES (104,'Ravi',23,'Male','Namakkal','9876543210'),
			(105,'Manimala',23,'Female','Erode','9874521360');

INSERT INTO studentsdata(id,name,age,gender,city,contact) 
	VALUES (106,'Manoj',30,'Male','Chennai','9988472283'),
		   (107,'Priya',28,'Female','Chennai','9988776655'),
		   (108,'Rajashri',16,'Female','Bangalore','9632178532'),
		   (109,'Keerthana',16,'Female','Bangalore','9852351753'),
		   (110,'Kannan',25,'Male','Bangalore','9998887776');
		  
/* To delete a row from table:*/
DELETE FROM studentsdata WHERE name='Ravi';

DELETE FROM studentsdata WHERE id=NULL;

/*To sort asc/des in a table */
SELECT * FROM studentsdata
ORDER BY id;

/*ORDER BY city ASC, name DESC;
 * ORDER BY ID DESC;
 */
/*To view recoords in a table:*/
SELECT * FROM studentsdata;

/* To Modify/Update a row in table:*/
UPDATE studentsdata SET city='Hosur',contact='9988776655' WHERE id=103;

UPDATE studentsdata SET name='Krishnaveni' WHERE id=101;

/* Select particular fields in a table:*/
SELECT name,age FROM studentsdata;

/* To Select records with criteria:*/
SELECT name,age,city FROM studentsdata WHERE city='Chennai';


/* Select recoords with multiple criteria:*/
SELECT name,age,city FROM studentsdata WHERE city='Hosur' AND age >= 23;

SELECT name,age,city FROM studentsdata WHERE city='Bangalore' OR city='Chennai';

SELECT name,age,city FROM studentsdata WHERE (city='Bangalore' OR city='Chennai') AND age >= 23;


/* To select unique values in a field:*/
SELECT DISTINCT city FROM studentsdata;

/* To count unique values in a field:*/
SELECT COUNT(DISTINCT city) FROM studentsdata;

/* To count unique values in a field with allies name:*/
SELECT COUNT(DISTINCT city) AS total FROM studentsdata;

/* To Select N number of records:*/
SELECT * FROM studentsdata LIMIT 5;

/* To Select a range of records: after id 103 and total 4 records*/
SELECT * FROM studentsdata LIMIT 3,4;

/* To select the very first record from a table:*/
SELECT * FROM studentsdata LIMIT 0,1;

/* To select the very last record from a table:*/
SELECT * FROM studentsdata ORDER BY id DESC LIMIT 0,1;

/* To select maximum value in a table:*/
SELECT MAX(age) FROM studentsdata;


/* To select minimum value in a table:*/
SELECT MIN(age) FROM studentsdata;


/* To select average of a field:*/
SELECT AVG(age) FROM studentsdata;


/* To round a float value:*/
SELECT ROUND(AVG(age),0) FROM studentsdata;

/* To select sum of a field:*/
SELECT SUM(age) FROM studentsdata;

/* To select group wise records:*/
SELECT gender,COUNT(id) FROM studentsdata GROUP BY gender;


/* WILD CARD QUERIES:
To select values starts with some letters:*/
SELECT NAME FROM studentsdata WHERE name LIKE 'Ra%';

/* To select values ends with some letters:*/
SELECT NAME FROM studentsdata WHERE name LIKE '%ya';

/* To select values contains some letters:*/
SELECT NAME FROM studentsdata WHERE name LIKE '%la%';


/* To select values having given keywords:*/
SELECT * FROM STUDENTSDATA WHERE city IN('Chennai','Namakkal');

/* To select values not having given keywords:*/
SELECT * FROM STUDENTSDATA WHERE city NOT IN('Salem','Namakkal');

/* To select values not starts with some letters:*/
SELECT NAME FROM studentsdata WHERE name NOT LIKE 'Ra%';

/* To select values using between keyword:*/
SELECT name,age FROM studentsdata WHERE age BETWEEN 24 AND 30;

SELECT * FROM studentsdata;

/*To count the distinct city from the total city*/
SELECT COUNT(city) from	studentsdata;

SELECT COUNT(DISTINCT(city)) FROM studentsdata;

SELECT COUNT(city) - COUNT(DISTINCT(city)) FROM studentsdata;

CREATE table attendance(
	AID int,
	id int,
	Adate date,
	Astatus varchar(10)
);

select * from attendance;

INSERT into attendance (Aid,id,Adate,Astatus) 
	values  (1,101,'2023-01-02','P'),
			(2,101,'2023-01-03','P'),
			(3,101,'2023-01-04','P'),
			(4,101,'2023-01-05','P'),
			(5,101,'2023-01-06','P'),
			(6,102,'2023-01-02','P'),
			(7,102,'2023-01-03','P'),
			(8,102,'2023-01-04','P'),
			(9,102,'2023-01-05','P'),
			(10,102,'2023-01-06','P'),
			(11,103,'2023-01-02','P'),
			(12,103,'2023-01-03','A'),
			(13,103,'2023-01-04','P'),
			(14,103,'2023-01-05','P'),
			(15,103,'2023-01-06','P'),
			(16,104,'2023-01-02','P'),
			(17,104,'2023-01-03','A'),
			(18,104,'2023-01-04','P'),
			(19,104,'2023-01-05','P'),
			(20,104,'2023-01-06','P');
		
DELETE FROM attendance WHERE id=1;

INSERT into attendance (Aid,id,Adate,Astatus) 
	values  (21,105,'2023-01-02','A'),
			(23,105,'2023-01-03','P'),
			(23,105,'2023-01-04','P'),
			(24,105,'2023-01-05','A'),
			(25,105,'2023-01-06','P'),
			(26,106,'2023-01-02','P'),
			(27,106,'2023-01-03','A'),
			(28,106,'2023-01-04','A'),
			(29,106,'2023-01-05','P'),
			(30,106,'2023-01-06','P'),
			(31,107,'2023-01-02','A'),
			(32,107,'2023-01-03','P'),
			(33,107,'2023-01-04','P'),
			(34,107,'2023-01-05','P'),
			(35,107,'2023-01-06','P'),
			(36,108,'2023-01-02','P'),
			(37,108,'2023-01-03','P'),
			(38,108,'2023-01-04','P'),
			(39,108,'2023-01-05','A'),
			(40,108,'2023-01-06','A'),
			(41,109,'2023-01-02','P'),
			(42,109,'2023-01-03','A'),
			(43,109,'2023-01-04','P'),
			(44,109,'2023-01-05','P'),
			(45,109,'2023-01-06','A'),
			(46,110,'2023-01-02','P'),
			(47,110,'2023-01-03','P'),
			(48,110,'2023-01-04','P'),
			(49,110,'2023-01-05','A'),
			(50,110,'2023-01-06','P');
			
select * from attendance;
select * from studentsdata;

select id,name from studentsdata where if(city="Chennai",0,1);

select * from attendance where id=101;
select * from attendance where aid=5;

/*select working day of each students*/
select id,count(adate) as working from attendance group by id;

/*select present days of each students*/
SELECT id,count(Astatus) as present from attendance where Astatus = 'P' group by id;

---------------------------------------------
JOINS
----------------------------------------------

select * from attendance;
select * from studentsdata;

SELECT studentsdata.name,attendance.adate,attendance.Astatus from
studentsdata inner join attendance
on studentsdata.id=attendance.id;

create table emp (
	emp_id int,
	name varchar(25),
	designation varchar(50),
	dateofjoining date NOT NULL
);

SELECT * FROM emp;

INSERT into emp (emp_id,name,designation,dateofjoining)
values	(1,'Manoj','Electronics','2023-02-10'),
		(2,'Kumar','Civil','2022-01-10'),
		(3,'Kanna','Mechanical','2021-04-14'),
		(4,'Priya','Mechanical','2021-12-05'),
		(5,'Teja','Computer','2021-04-25'),
		(6,'Srimathi','Civil','2021-10-30'),
		(7,'Akash','Electronics','2021-08-04'),
		(8,'Hari','Computer','2021-04-24'),
		(9,'Praveen','Civil','2021-04-14'),
		(10,'Azar','Computer','2021-04-15');
		
	
create table salary(
	sal_id int,
	id int,
	Sal_Date date,
	Amount int
);

SELECT * from salary;

DELETE from salary where id=1;
drop table salary;

insert into salary(sal_id,id,Sal_Date,Amount)
values	(12345,1,'2023-03-05',50000),
		(54657,2,'2023-03-05',45000),
		(21542,3,'2023-03-05',30000),
		(31572,4,'2023-03-05',20000),
		(33565,5,'2023-03-05',10000),
		(41212,6,'2023-03-05',15000),
		(15452,7,'2023-03-05',35000),
		(85125,8,'2023-03-05',20000),
		(541254,12,'2023-03-05',5000);

SELECT * from salary;
SELECT * FROM emp;

SELECT emp.name,emp.designation,emp.dateofjoining,salary.Sal_Date,salary.Amount from
emp inner join salary
on emp.emp_id=salary.id;


SELECT emp.name,emp.designation,emp.dateofjoining,salary.Sal_Date,salary.Amount from
emp left join salary
on emp.emp_id=salary.id;

SELECT emp.name,emp.designation,emp.dateofjoining,salary.Sal_Date,salary.Amount from
emp right join salary
on emp.emp_id=salary.id;

--------------------
CASE WHEN
------------------

select * from studentsdata;

select DISTINCT (city) from studentsdata;

/* 
 * Erode = 50
 * Hosur = 75
 * Chennai = 150
 * Namakkal = 50
 * Bangalore = 200
 */

select name,city,
(
	CASE 
		when city ='Erode' THEN 50
		when city ='Hosur' THEN 75
		when city ='Chennai' THEN 150
		when city ='Namakkal' THEN 50
		when city ='Bangalore' THEN 200
		else 0
	END
) as amount from studentsdata;

/*as amount from studentsdata where city = 'Chennai'; */

UPDATE studentsdata set	city = 'Dharmapuri' where city = 'Namakkal';








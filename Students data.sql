create table students (

stud_id int,
stud_name varchar(255),
score int,
branch varchar(100),
dateofjoining date NOT NULL

);


SELECT * FROM students;


INSERT into students (stud_id,stud_name,score,branch,dateofjoining)

values	(1,'Manoj',600,'Electronics','2023-02-10'),
		(2,'Kumar',400,'Civil','2022-01-10'),
		(3,'Kanna',1000,'Mechanical','2021-04-14'),
		(4,'Priya',500,'Mechanical','2021-12-05'),
		(5,'Teja',450,'Computer','2021-04-25'),
		(6,'Srimathi',500,'Civil','2021-10-30'),
		(7,'Akash',650,'Electronics','2021-08-04'),
		(8,'Hari',700,'Computer','2021-04-24'),
		(9,'Praveen',900,'Civil','2021-04-14'),
		(10,'Azar',800,'Computer','2021-04-15')


SELECT * FROM students;

update students
set branch='Mechanical'
where stud_id=5

SELECT * FROM students;

delete from students where stud_id=10;

SELECT * FROM students;



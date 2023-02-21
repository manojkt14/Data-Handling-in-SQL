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









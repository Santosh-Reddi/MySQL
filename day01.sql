create database training;

use training;

create table customer(
custid int,
custname varchar(50),
age int,
gender char(1),
city varchar(50));

-- LOAD DATA (INSERT)

INSERT INTO customer VALUES(1000,'Raghul Ramesh', 37, 'M', 'Chennai');
INSERT INTO CUSTOMER VALUES(1001,'Priya Rajesh',30,'F','Hyderabad');

INSERT INTO CUSTOMER(custid, custname, gender, city) VALUES(1002,'Malini','F','Bangalore');
INSERT INTO customer(city,custname,gender,custid,age) VALUES('Pune','Pankaj Kumar','M',1003,40);

INSERT INTO CUSTOMER VALUES(1004,'Mohan Kuamr',37,'M','Chennai'),(1005,'Sivanandam',50,'M','Delhi'),(1006,'Ranga',55,'M','Chennai');

INSERT INTO CUSTOMER(custid, custname,gender,city) VALUES(1007,'Raj S','M','Pandicherry');
SELECT * FROM customer;

-- UPDATE statement

-- SAFE MODE disable
SET sql_safe_updates=0;


UPDATE customer SET age=30 WHERE custid=1002;

UPDATE customer SET age=60 WHERE custid=1007;

-- CONSTAINTS (UNIQUE, NOT NULL, PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT);

UPDATE customer SET custid=2000 WHERE custid=1006;

UPDATE customer SET age=41, city='Hyderabad' WHERE custid=1003;


INSERT INTO CUSTOMER(custname, age, gender, city) VALUES('Aveek Sharma',45,'M','Hyderabad');

UPDATE customer SET custid=1008 WHERE custid IS NULL;

 -- DELETE the records
 
 DELETE FROM customer WHERE custname='Priya Rajesh';
 
 SELECT * FROM CUSTOMER;
 
 DELETE FROM customer WHERE age>=50;
 
  SELECT * FROM CUSTOMER;
  
  DELETE FROM CUSTOMER WHERE city IN ('Chennai','Bangalore');
  DELETE FROM CUSTOMER WHERE city != 'Hyderabad';
  
  -- DELETE THE RECORD IF THE CUSTOMER ARE NOT FROM EITHER CHENNAI OR HYDERABD
  
  DELETE FROM CUSTOMER WHERE CITY NOT IN ('Chennai','Hyderabad');
  
  
  
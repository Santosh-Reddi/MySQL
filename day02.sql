use training;

create table product(
prod_id int,
prod_name varchar(100),
amount int);

insert into product values (1,'Mobile',30000),(2,'laptop',75000),(3,'TV',60000),(4,'Desktop',55000),(5,'Fridge',30000);

select * from product;

-- select all columns
select * from company where company='Infosys';

select * from company;
-- select specific columns
select company, age from company where age>20 and age<50 and place='Delhi';

select * from trail_company;

-- I changed two entries in company.csv under age column to string
-- Check trail_company shape and company shape to check if it dropped the updated rows

-- Update and Delete

set sql_safe_updates=0;

update company set place='Other'  where place='' ;

select * from product;

update product set prod_name = 'Television' , amount =100000 where prod_id=3;
select * from product;


-- DELETE RECORDS

SELECT * FROM product;

SELECT * FROM product WHERE prod_name='Fridge';

DELETE FROM product  WHERE prod_name='Fridge';

SELECT * FROM product;
SELECT * FROM product WHERE prod_id>2;
DELETE FROM product WHERE prod_id>2;
SELECT * FROM product;

SELECT * FROM company WHERE salary='';
DELETE FROM company WHERE salary='';
SELECT * FROM company;


-- CONSTRAINT
-- UNIQUE  -> Allows only the unique value 
-- NOT NULL
-- CHECK
-- DEFAULT
-- PRIMARY KEY
-- FOREIGN KEY

CREATE TABLE unique_table(
custid INT UNIQUE ,
custname VARCHAR(100),
age INT,
city VARCHAR(100)
);

INSERT INTO unique_table VALUES(100,'Ramkumar',35,'Chennai');
SELECT * FROM unique_table;
INSERT INTO unique_table VALUES(101,'Balaravikumar',30,'Hyderabad');
-- INSERT INTO unique_table VALUES(100,'Mohan',40,'Bangalore');  -- ERROR since the custid=100 is duplication
INSERT INTO unique_table VALUES(102,'Mohan',40,'Bangalore'); 
SELECT * FROM unique_table;
INSERT INTO unique_table VALUES(103,'Mohan',40,'Bangalore'); 
SELECT * FROM unique_table;

CREATE TABLE country_table(
country_id int,
	country_name varchar(100) unique,
	people_count int);
    

insert into country_table values (1,"India", 100),(2,'Sri Lanka',4),(3,'China',110),(4,'USA',50),
(5,'Russia',45),(6,'France',23),(7,'Italy',12),(8,'Spain',23),(9,'Germany',45),(10,'Norway',3);

select * from country_table;

-- Update

update country_table set country_name='United States' where country_name='USA';

-- Delete
Delete from country_table where country_name='China';

select * from country_table;

SELECT * FROM unique_table;


SELECT * FROM unique_table;
INSERT INTO unique_table VALUES(103,'Mohan',40,'Bangalore');  -- error since custid is not unique
INSERT INTO unique_table(custname,age,city) VALUES('Aveek',40,'Delhi');
INSERT INTO unique_table(custname,age,city) VALUES('Chandra',30,'Pune');
SELECT * FROM unique_table;


-- NOT NULL 
CREATE TABLE notnull_table(
custid INT NOT NULL,
custname VARCHAR(100) UNIQUE,
age INT,
city VARCHAR(100)
);


INSERT INTO notnull_table VALUES(1,'Raja',25,'Hyderabad');
SELECT * FROM notnull_table;
INSERT INTO notnull_table VALUES(1,'Raja',25,'Hyderabad');  -- ERROR since Custname is duplicate. 
INSERT INTO notnull_table VALUES(1,'Rajesh',25,'Hyderabad');
SELECT * FROM notnull_table;
INSERT INTO notnull_table(custname,age,city) VALUES('Bala',40,'Bangalore') ; -- Error since custid is null
INSERT INTO notnull_table(custid,custname,age,city) VALUES(2,'Bala',40,'Bangalore') ;
SELECT * FROM notnull_table;

-- CHECK CONSTRAINT

CREATE TABLE check_table(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100) NOT NULL,
age INT CHECK (age>0 and age<=100),
city VARCHAR(100)
);

INSERT INTO check_table VALUES(1,'Siva',30,'Chennai');
INSERT INTO check_table VALUES(1,'Venkatesh',36,'Hyderabad'); -- ERROR since it is duplicate custid
INSERT INTO check_table(custname,age,city) VALUES('Venkatesh',36,'Hyderabad');  -- ERROR since it is NULL
INSERT INTO check_table VALUES(2,'Venkatesh',36,'Hyderabad');
SELECT * FROM check_table ;
INSERT INTO check_table VALUES(3,'Ramya',-1,'Delhi');  -- ERROR since age is < 0
INSERT INTO check_table VALUES(3,'Ramya',101,'Delhi');  -- ERROR since age is > 100
INSERT INTO check_table VALUES(3,'Ramya',25,'Delhi'); 
SELECT * FROM check_table ;

-- DEFAULT CONSTRAINT
CREATE TABLE default_table(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100) UNIQUE,
age INT CHECK (age>=22 AND age <=40),
city varchar(100) default 'Hyderabad');

city VARCHAR(100) DEFAULT 'Hyderabad'
);

INSERT INTO default_table VALUES(1,'Prakash',25,'Bangalore');
INSERT INTO default_table VALUES(2,'Priya',20,'Bangalore');  -- ERROR since age is <=22
INSERT INTO default_table VALUES(2,'Priya',50,'Bangalore');   -- ERROR since age is >= 40
INSERT INTO default_table VALUES(2,'Priya',30,'Bangalore'); 
SELECT * FROM default_table;
INSERT INTO default_table(custid, custname,age) VALUES(3,'Satya',35);
SELECT * FROM default_table;

CREATE TABLE check_table_2(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100) UNIQUE,
age INT CHECK (age>=22 AND age <=40),
city VARCHAR(100) CHECK (city IN ('Chennai','Hyderabad','Bangalore'))
);

INSERT INTO default_table VALUES(1,'Prakash',25,'Bangalore');
INSERT INTO default_table VALUES(2,'Priya',20,'Bangalore');  -- ERROR since age is <=22
INSERT INTO default_table VALUES(2,'Priya',50,'Bangalore');   -- ERROR since age is >= 40
INSERT INTO default_table VALUES(2,'Priya',30,'Bangalore'); 
SELECT * FROM default_table;
INSERT INTO default_table(custid, custname,age) VALUES(3,'Satya',35);
SELECT * FROM default_table;

CREATE TABLE check_table_2(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100) UNIQUE,
age INT CHECK (age>=22 AND age <=40),
city VARCHAR(100) CHECK (city IN ('Chennai','Hyderabad','Bangalore'))
);

-- 
create table cust_detail_temp(
custname varchar(50),
Mobile int unique check (Mobile>=6000000000 and Mobile<=10000000000),
city varchar(100));

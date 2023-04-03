use training;

-- SELF JOIN   
CREATE TABLE EMPLOYEE_TBL(
emp_id INT,
emp_name VARCHAR(100),
salary INT,
mgr_id INT)
;


INSERT INTO EMPLOYEE_TBL VALUES(1,'Raja',10000,3);
INSERT INTO EMPLOYEE_TBL VALUES(2,'Ram',20000,3);
INSERT INTO EMPLOYEE_TBL VALUES(3,'Bala',15000,9);
INSERT INTO EMPLOYEE_TBL VALUES(4,'Prabha',25000,9);
INSERT INTO EMPLOYEE_TBL VALUES(5,'Priya',10000,8);
INSERT INTO EMPLOYEE_TBL VALUES(6,'Ramya',30000,8);
INSERT INTO EMPLOYEE_TBL VALUES(7,'Kavin',12000,9);
INSERT INTO EMPLOYEE_TBL VALUES(8,'Sakshi',20000,10);
INSERT INTO EMPLOYEE_TBL VALUES(9,'Aveek',22000,10);
INSERT INTO EMPLOYEE_TBL VALUES(10,'Chandra',50000,3);

select * from employee_tbl;

select e.emp_name from employee_tbl e;

SELECT e.emp_name , e.salary as emp_salary , m.salary as manager_Sal FROM employee_tbl e JOIN employee_tbl m ON e.mgr_id=m.emp_id WHERE e.salary > m.salary;

select * from customer;
  
select replace(custname,'a','1') as rep from customer;

select * from customer;



create database if not exists usecase;

use usecase;

create table if not exists EmployeeDML (EmployeeID Int,FirstName Varchar(20),Designation Varchar(20), Salary Int,Department Varchar(20))
clustered by (department) into 3 buckets stored as orc TBLPROPERTIES ('transactional'='true'); 

insert into table EmployeeDML values(1,'Ashok','DEV',50000,'Development'), (2,'Vinoth','QA',25000,'Testing'); 

select * from EmployeeDML;

update EmployeeDML set salary = 100000 where employeeid = 1;

select * from EmployeeDML;

delete from EmployeeDML where employeeid=2;  

select * from EmployeeDML

insert into table EmployeeDML values(3,'Shyam','DEV',70000,'Development')

select * from EmployeeDML

/* Table must be bucketed, ORC format and Transactional for making DML operations */
/* For every DML operation statement a Delta folder will be created at table directory location to track the changes and provide latest value when querying */

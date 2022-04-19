create database prectical;

use prectical;

create table EmployeeInfo(
	EmpID int primary key,
    EmpFname varchar(200),
    EmpLname varchar(200),
    Department varchar(200),
    Project varchar(200),
    Address varchar(200),
    DOB date,
    Gender varchar(10)
);

create table EmployeePosition(
	EmpID int primary key,
    EmpPosition varchar(200),
    DateOfJoining date,
    Salary int(100)
);

insert into EmployeeInfo(EmpID,EmpFname,EmpLname,Department,Project,Address,DOB,Gender) values
	('1','Sanjay','Mehra','HR','P1','Hyderabad(HYD)','1976-12-01','M'),
    ('2','Ananya','Mishra','Admin','P2','Delhi(DEL)','1968-05-02','F'),
    ('3','Rohan','Diwan','Account','P3','Mumbai(BOM)','1980-01-01','M'),
    ('4','Sonia','Kulkarni','HR','P1','Hyderabad(HYD)','1992-05-02','F'),
    ('5','Ankit','Kapoor','Admin','P2','Delhi(DEL)','1994-07-03','M');
    
    
insert into EmployeePosition(EmpID,EmpPosition,DateOfJoining,Salary) values
	('1','Manager','2022-05-01',500000),
    ('2','Executive','2022-05-02',75000),
    ('3','Manager','2022-05-01',90000),
    ('4','Lead','2022-05-02',85000),
    ('5','Executive','2022-05-01',300000);


#1. Write a query to fetch the number of employees working in the department ‘Admin’
select count(Department) from EmployeeInfo where Department='Admin';

# 2. Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.
select substring(EmpLname,1,4) as lname from EmployeeInfo;

# 3. Write q query to find all the employees whose salary is between 50000 to 100000.
select * from EmployeePosition where Salary between 50000 and 100000;

#4. Write a query to find the names of employees that begin with ‘S’
select * from EmployeeInfo where EmpFname like 'S%';

#5. Write a query to fetch top N records order by salary. (ex. top 5 records)
select * from EmployeePosition where Salary  limit 4;

#6. Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.
select * from EmployeeInfo where EmpFname not in('Sanjay','Sonia');

#7. Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order.
select Department, count(EmpID) as empcount from EmployeeInfo group by Department order by empcount asc;



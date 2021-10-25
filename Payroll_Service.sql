/*  UC1 Create DataBase*/
create database payroll_service


/*  UC2 Creating Table*/
Create Table employee_payroll(
Empid int primary key,
Empname varchar(50),
Salary int,
StartDate date,
)

/* UC3 CRUD operation (Insert)*/
insert into employee_payroll values
(1,'Abhi',50000,'2015-05-25'),
(2,'Bhanu',45000,'2017-06-1'),
(3,'Dinesh',40000,'2018-04-1'),
(4,'Manu',45000,'2015-06-1')



/* UC4 CRUD operation (Retreive)*/
select * from employee_payroll



/*UC5 Selecting Salary from perticular person*/
select Salary from employee_payroll
where Empname= 'Abhi'

select Salary from employee_payroll
WHERE StartDate BETWEEN CAST('2015-05-25' as Date) AND ('2017-06-1');



/*UC6 Adding new Column to table*/
alter table employee_payroll 
add Gender char

update employee_payroll set Gender ='M' 
where EMpname = 'Abhi' or EMpname =
'Dinesh'or EMpname ='Manu';

update employee_payroll set Gender ='F' 
where EMpname = 'Bhanu'



/* UC7 Find avg min max and count*/
select count(Salary) from employee_payroll 

select sum(Salary) from employee_payroll
where Gender='M' group by Gender

select avg(Salary) from employee_payroll
where Gender='M' group by Gender

select min(Salary) from employee_payroll
where Gender='M' group by Gender

select max(Salary) from employee_payroll
where Gender='M' group by Gender

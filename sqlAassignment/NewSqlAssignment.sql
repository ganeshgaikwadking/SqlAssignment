--1> Write a query to display first_name and last_name using alias ‘First Name’ & ‘Last Name’ from employee table
   select * from Employee
   select Firstname ,Lastname as Firstname ,LastName from Employee

--2> Write a query to get unique department ID from employee table
    select * from emp
    select distinct department_id FROM emp;	 
--3> Write a query to get all employee details from employee table display in descending order
    select*from Employee order By id desc;
--4> Write a query to display employee details with salary, calculate the PF as 12 % of basic salary & display as separate column
     select ename,department, salary, salary*.25 PF from emp;

--5> Write a query to get total salaries payable to all employees from employee table

  select sum(salary) as TotalSalaries from emp
  
--6>Write a query to get max and min salary of employee

  select max(salary) Max_Salary ,min(salary) as Min_Salary from emp

--7> Write a query to get number of employees are working in company

  select count(*) from emp
  select*from emp

--8> Write a query to get the number of unique designation in the company

  select count(distinct designation) from emp

  select distinct designation from emp

--9> Write a query to display emp_name as ‘Name’ in upper case

  select upper(ename) as NameInUpper from emp

--10> Write a query to get first 10 records from the employee table
  
  select top 10 eid,ename,department from  emp


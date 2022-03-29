select * from Employee

--substring

select SUBSTRING (Designation,6,7) as Test From Employee where Id=1

--concate
select CONCAT(Name,' ',Designation)as Test from Employee

--len
select len(Designation) from Employee

replace
select replace(name,'al','ABC') from Employee where id=2

--Trim
select Rtrim(name) from Employee
select Ltrim(name) from Employee 
 
 --Reverse

 select REVERSE(Designation) from Employee

 --Round
 select round(salary,3) from Employee

 --charindex

 select charindex('a',name) from Employee where id=2

--User defined fuctions


create function getemp(@id int)
returns table
as
return (select * from Employee where id=@id)
end

select * from  dbo.getemp(2)

create function GetNameFromEmp()
returns varchar(50)
as
begin
return (select name from Employee where id=1)
end


select  dbo.GetNameFromEmp() as Name

create function Addition(@a int,@b int)
returns int
as 
begin
declare @c int
set @c=@a+@b
return @c
end

select dbo.Addition(10,20) as result

create function oddeven(@a int)
returns varchar(5)
as
begin
declare @res varchar(20)
if @a%2=0
Select @res='even'
else
select @res='odd'
return @res
end

drop function oddeven

select dbo.oddeven(6)as result



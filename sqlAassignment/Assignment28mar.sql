create view DisplayDetails
as
select c.name,s.salesprice
from collectors c
inner join sales s on s.collectorid=c.collectorid
inner join paintings p on p.paintingid=s.paintingid

select * from DisplayDetails

select *from Emp

create procedure sp_emp_insertSP
(

@name varchar(50),
@age int,
@dept varchar(20),
@salary decimal,
@city varchar(20),
@exp int
)
as 
begin
insert into emp values(@name,@age,@dept,@salary,@city,@exp)
return
end


exec sp_emp_insertSP
@name='Rakesh',
@age=25,
@dept='hr',
@salary=23000,
@city='Mumbai',
@exp=2

exec sp_emp_insertSP
@name='Ramesh',
@age=25,
@dept='Acoount',
@salary=24000,
@city='Nashik',
@exp=1


create procedure sp_emp_selecctsp
(
@id int
)
as
begin
select * from emp where eid=@id
return
end

exec sp_emp_selecctsp 
@id=17

select * from emp

alter procedure sp_emp_selecctsp
(
@name varchar(30),
@age int,
@dept varchar(20),
@salary decimal,
@city varchar(20),
@exp int
)
as 
begin
insert into emp values(@name,@age,@dept,@salary,@city,@exp)
return
end


create table employeeAudit(
id int Identity,
info varchar(20),

)

drop table employeeAudit
create table employeeTemp
(
id int,
name varchar (20),

)
select * from employeeTemp
select * from employeeAudit


create trigger tr_EmpTemp_Insert
on employeeTemp
for insert
as 
begin
declare @id int
select @id=id from inserted 

insert into employeeTemp values

('New id inserted ='+cast(@id as varchar(50))+
                             'added at ='+cast(getdate() as varchar(20))
							 )
end



create trigger tr_EmpTempDelete
on employeeTemp
for delete
as 
begin
declare @id int
select @id=Id from deleted
insert into employeeAudit values('id delete ='+cast(@id as varchar(50))+
                             ' at ='+cast(getdate() as varchar(20))
							 )
end
select * from employeeTemp



  Alter trigger tr_employee_forup
  on Employee
  for update
  as begin
 
	declare @id int
	declare @oldname varchar(20),@newname varchar(20)
	declare @olddesignation varchar(20), @newdesignation varchar(20)
	declare @oldsalary decimal,@newsalary decimal
	declare @auditstr varchar(1000)


  select * into #TempTable from inserted
	while(Exists(select Id from #TempTable))
	begin
	set @auditstr=''
	select Top 1 
	@id=Id,@newname=Name,@newdesignation=Designation,@newsalary=Salary

	from #TempTable
	select @oldname=Name,@olddesignation=Designation,@oldsalary=Salary from deleted
	where Id=@id
	set @auditstr='emp with id '+ cast(@id as varchar(5))+'change'

	if(@oldname<>@newname)
	set @auditstr=@auditstr+' old name '+@oldname +'new name '+@newname

	if(@olddesignation<>@newdesignation)
	set @auditstr=@auditstr+' old designation '+@olddesignation +'new designation '+@newdesignation

	if(@oldsalary<>@newsalary)
	set @auditstr=@auditstr+' old salary '+cast(@oldsalary as varchar(50)) +'new salary '+cast(@newsalary as varchar(50))+''

	insert into employeeaudit values(@auditstr)
	delete from #TempTable where Id=@id
	end
end

select * from  employeeAudit
update Employee set name='Viraj',Designation='manager' where id=10


create table emp
(
eid int primary key identity (1,1),
ename varchar(20) not null,
age int check (age>=18),
department varchar(20) not null,
salary decimal check(salary>0)
);
insert into emp values ('ganesh',20,'account',2000)
insert into emp values ('raj',25,'account',2000)
insert into emp values ('vishal',23,'account',2000)
insert into emp values ('Ravi',22,'purchase',25000)
select * from emp

select ename,age from emp

select distinct department from emp 
update emp set  salary=25000 where eid=1
update emp set  salary=24000 where eid=2
update emp set salary=22000 where eid=3

update emp set salary=20000 where eid=7

update emp set city='pune' where eid=1 
update emp set city='mumbai' where eid=2
update emp set city='nashik' where eid=3
update emp set city='nashik' where eid=4
update emp set city='pune' where eid=7





select * from emp where salary<24000


select * from emp where salary<=24000

select * from emp where salary between 20000 and 25000

select * from emp where city like'm%'
 select * from emp where city like '%n'
 select * from emp where city like '%n%'

 select * from emp where city like 'n_____'

 select * from emp where city like '[a-m]%' 

 select * from emp where city not like '[pm]%'

 select * from emp where city  like '[!pm]%' 

 select * from emp where city in('pune','mumbai')


select * from emp where eid in(7)
select * from emp where eid not in(2,3)



alter table  emp
add city varchar(20)
update emp set department='Admin' where  eid=2

drop table emp

delete from emp where eid=6

create table dept
(
did int primary key,
dname varchar(20) not null,
eid int ,
constraint FK_dept foreign key(eid) references  emp(eid)

);
select * from dept
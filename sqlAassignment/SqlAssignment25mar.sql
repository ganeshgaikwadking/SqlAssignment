select * from emp

select count(eid) from emp

select count (*)from emp

select count (distinct city)from emp

select sum(salary)from emp

select sum(salary)as sumsalary from emp --alise column name

select avg(salary) as avgsalary from emp  ---avg salary


select * from persons
insert into Persons values(1,'suraj',22,'pune')
insert into Persons values(2,'raj',24,'mumbai')
insert into Persons values(3,'kishan',23,'nagpur')
insert into Persons values(4,'vishal',25,'pune')
insert into Persons values(5,'akshay',20,'mumbai')
insert into Persons values(6,'suresh',22,'pune')

select * from Persons

select count(*) from Persons


select count(distinct city) from Persons

select count(PersonID) from Persons

select sum(Age) as Sumage from Persons

select avg(Age) as Avgage from Persons

select distinct (city)from Persons

select max(Age)as maxage from Persons


select min(Age) as minsalary from Persons

select city, count(PersonID) as TotalEmp
from Persons
group by city

select Age, count(PersonID) as TotalEmp
from Persons
group by Age



select Age,city, count(PersonID) as TotalEmp
from Persons
group by Age,city


select city,count(PersonID) as TotalCount from Persons
group by city
having count(PersonID)>2; 

select city,count(PersonID) as TotalCount from Persons
group by city
having city in ('mumbai','pune'); 

select city,count(Age) as TotalCount from Persons
group by city
having max(age)>20;

select name from Persons where age=(
select max(age)from persons where age<>
(select max(age) from persons) );

select * from emp


alter  table emp
add exp int

select ename ,exp from emp where exp=
(select max(exp) from emp) ;

create table paintings(
paintingid int primary key,
name varchar(10),
artistId int,
price decimal)

create table artists(
artistId int,
name varchar(20),
)

create table collectors(
collectorid int,
name varchar(20),
)

create table sales(
id int,
saledate varchar(20),
paintingid int,
artistId int,
collectorid int,
salesprice decimal)

select * from paintings

insert into paintings values(11,'miracle',1,300)
insert into paintings values(12,'Monalisa',1,700)
insert into paintings values(13,'Guernica',2,2800)
insert into paintings values(14,'the birth',2,2300)
insert into paintings values(15,'sunshine',3,250)
insert into paintings values(16,'mountan',3,5000)
insert into paintings values(17,'the last super',3,50)
insert into paintings values(18,'the scream',4,1300)

insert into artists values(1,'Rahul')
insert into artists values(2,'Kishor')
insert into artists values(3,'Amol')
insert into artists values(4,'Rajesh')

insert into collectors values(101,'Pooja')
insert into collectors values(102,'Nikita')
insert into collectors values(103,'Sonali')
insert into collectors values(104,'Priyanka')

insert into sales values(1001,'2022-3-16',13,2,104,2500)
insert into sales values(1002,'2022-3-22',14,2,102,2300)
insert into sales values(1003,'2022-3-05',11,1,102,300)
insert into sales values(1004,'2022-3-02',16,3,103,4000)
insert into sales values(1005,'2022-3-10',15,3,103,200)
insert into sales values(1005,'2022-3-14',17,3,103,50)

select * from paintings
select * from sales

select name,price from paintings where price>=
(select Avg(price) from paintings) 

-- find the list of collectors who purchased the painting from our gallery.
select * from sales
select * from collectors
select name  from collectors
where collectorid in(select collectorid from sales)



select s.id,c.name,s.salesprice from sales s
inner join collectors c on c.collectorid=s.collectorid

select s.id,c.name,s.salesprice from sales s
right join collectors c on c.collectorid=s.collectorid

select s.id,c.name,s.salesprice from sales s
left join collectors c on c.collectorid=s.collectorid


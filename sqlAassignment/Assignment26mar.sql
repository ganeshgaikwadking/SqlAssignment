select c.name,s.salesprice,s.saledate
from collectors c
inner join sales s ON s.collectorid=c.collectorid   

select * from collectors

select c.name,s.salesprice,p.name
from collectors c
full join sales s ON s.collectorid=c.collectorid 
full join paintings p ON p.paintingid=s.paintingid 


create table manager (
   managerid int,
   name varchar(20) not null
);




insert into manager values(1,'raj')
insert into manager values(2,'mansa')

select * from Emp

create table breakfast
(
id int,
name varchar(20)
)


insert into breakfast values(1,'Poha');
insert into breakfast values(2,'Upma');
insert into breakfast values(3,'Idli');

create table drinks
(  dr_id int,
    dr_Name varchar(20))

	insert into drinks values(1,'Tea');
	insert into drinks values(2,'Coffee');
	insert into  drinks values(3,'Black tea');

);


Select * from breakfast cross join drinks

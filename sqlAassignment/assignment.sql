
create table Persons(
PersonID int,
Name varchar(50),
Age int,
City varchar(20)
);
alter table Persons
add state varchar(20);
 
 select * from Persons
 

 alter table Persons
 alter column state varchar(30);

 alter table Persons
 drop column state;

 drop  table Persons

 create table Persons(
PersonID int not null,
Name varchar(50) not null,
Age int,
City varchar(20)
);

Alter table Persons
alter column age int not null;

alter table Persons
add unique(PersonID)

alter table Persons
add constraint unique_Persons unique(PersonID);

alter table Persons
drop constraint unique_Persons;

--drop table Persons

create table Persons(
PersonID int,
Name varchar(50) not null,
Age int,
City varchar(20),
constraint PK_Persons primary key(PersonID)
);

create table Orders(
OrderID int,
OrderNo int,
PersonID int,
constraint PK_Orders primary key(OrderID),
constraint FK_Orders foreign key(PersonID) references Persons(PersonID

alter table Orders
drop constraint FK_Orders;

alter table Orders
add constraint FK_Orders foreign key(PersonID) references Persons(PersonID);



create table Persons(
PersonID int,
Name varchar(50) not null,
Age int,
City varchar(20),
constraint PK_Persons primary key(PersonID),
constraint chk_Age check(Age>=18)
);




alter table Persons
add constraint chk_Age check(Age>=18);

alter table Persons
drop constraint chk_Age;


alter table Persons
add constraint df_City default 'Pune' for City;



create table Personss(
PersonID int identity(1,1), -- to auto increment 1- initial value , 1 - increment by 1
Name varchar(50) not null,
Age int,
City varchar(20) default 'Pune',
);

select * from Personss

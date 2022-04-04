--1.> Write a statement that will select the City column from the Customers table
		select * from Customer
		select Cust_City from Customer

--2.>Select all the different values from the Country column in the Customers table.
		select Country from Customer

--3.>Select all records where the City column has the value "London
		select Cust_city from Customer
		where Country='London'

--4.>Use the NOT keyword to select all records where City is NOT "Berlin".
		select Cust_City From Customer
		where Country<>'Berlin'

--5.>Select all records where the CustomerID column has the value 23.
		select * from Customer
		where Cust_id=23

--6.>Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
		select *from Customer
		where Cust_city='Berlin' OR postalcode=121110

--7.>Select all records where the City column has the value 'Berlin' or 'London'.
select * from Customer
where Cust_City='Berlin' OR Country ='London'

--8.>Select all records from the Customers table, sort the result alphabetically by the column City.
		select Cust_City From Customer
		order by Cust_city asc

--9.>Select all records from the Customers table, sort the result reversed alphabetically by the column City.
		select country,Cust_City From Customer
		order by Cust_city desc

--10.>Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
		select Cust_City From Customer
		order by Cust_city,country asc 

--11.>Select all records from the Customers where the PostalCode column is empty.
		 select * from Customer where PostalCode is null;

--12.>Select all records from the Customers where the PostalCode column is NOT empty.
		select * from Customer
		where postalcode<>''


--13.> Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
        update Customer set 'oslo' where Country ='Norway'


--14.> Delete all the records from the Customers table where the Country value is 'Norway'.
        delete from Customer where Country ='Norway'


--15.> Use the MIN function to select the record with the smallest value of the Price column.
        select min(Price) as SmallestPrice from Customer


--16.> Use an SQL function to select the record with the highest value of the Price column.
        select max(Price) as HighestVAlue from Customer


--17.> Use an SQL function to calculate the average price of all products.
        select avg(Price) from  Product


--18.> Use an SQL function to calculate the sum of all the Price column values in the Products table
        select sum(Price) from Product


--19.> Select all records where the value of the City column starts with the letter "a".
        select * from Customer where Cust_city like 'a%'


--20.> Select all records where the value of the City column ends with the letter "a".
        select * from Customer where Cust_city like '%a'


--21.> Select all records where the value of the City column contains the letter "a".
         select * from Customer where Cust_city like 'a'


22-->  Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
          select * from Customer where Cust_city like 'a%b'


--23.> Select all records where the value of the City column does NOT start with the letter "a".
          select * from Customer where Cust_city not like 'a%'


--24.> Select all records where the second letter of the City is an "a".
          select * from Customer where Cust_city like '_a%'


--25.> Select all records where the first letter of the City is an "a" or a "c" or an "s".-----
          select * from Customer where Cust_city like '[acs]%'


--26.> Select all records where the first letter of the City starts with anything from an "a" to an "f".
         select * from customer where  Cust_city like '[a-f]%'


--27.> Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
         select * from customer where Cust_city not like '[!acf]'


--28.> Use the IN operator to select all the records where the Country is either "Norway" or "France".
           select * from customer where country in ('Norway','France')


--29.>  Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
           select * from customer where country not in ('Norway','France')


--30.>  Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
           select * from customer where Price between 2000 and 3000


--31.>  Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
           select * from customer where price not between 2000 and 3000


--32.>  Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
           select * from costomer where ProductName between "Geitost" and "Pavlova" order by ProductName


--33.>  When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
           select PostalCode as Pno from Customer


--34.>  When displaying the Customers table, refer to the table as Consumers instead of Customers.
           select  customer as Consumers from Customer


--35.>  List the number of customers in each country.
           select count Customer(cust_Id) ,country from Customer


--36.>  List the number of customers in each country, ordered by the country with the most customers first.
            select count(cust_Id) , country from Customer group by country


--37.>   Write the correct SQL statement to create a new database called testDB.
               CREATE DATABASE testDB


--38.>   Write the correct SQL statement to delete a database named testDB
               DROP DATABASE testdb


--39.>   Add a column of type DATE called Birthday in Persons table
              alter table Persons add Birthday date


--40.>    Delete the column Birthday from the Persons table
              alter table Persons drop column Birthday





Create database sales;
show databases;
use sales;
create table SalesPeople(
Snum int not null,
Sname varchar(355),
City varchar(355),
Comm int,
Primary key(Snum),
unique (sname)
);
insert into salespeople
values(1001,"Peel","London",12),
(1002,"Serres","Sanjose",13),
(1004,"Motika","London",11),
(1007,"Rifkin","Barcelona",15),
(1003,"Axelrod","Newyork",10);

select * from salespeople;

create table customers(
Cnum int not null,
Cname varchar(355),
City varchar(355) not null,
Snum int,
primary key(Cnum),
foreign key(Snum) references salespeople(Snum)
);
show tables;
insert into customers
values(2001, "Hoffnan", "London", 1001),
(2002, "Giovanni", "Rome", 1003),
(2003, "Liu", "Sanjose", 1002),
(2004, "Grass", "Berlin", 1002),
(2006, "Clemens", "London", 1001),
(2008, "Cisneros", "Sanjose", 1007),
(2007, "Pereira", "Rome", 1004);

select * from customers;

create table orders(
Onum int not null, 
Amt float,
Odate date,
Cnum int,
Snum int,
Primary key(Onum),
foreign key(Cnum) references customers(Cnum),
foreign key(Snum) references salespeople(Snum)
);
show tables;
insert into orders
values(3001, 18.69, '1990-10-3',2008,1007),
(3003, 767.19, "1990-10-3",2001,1001),
(3002, 1900.10, "1990-10-3",2007,1004),
(3005, 5160.45, "1990-10-3",2003,1002),
(3006, 1098.16, "1990-10-3",2008,1007),
(3009, 1713.23, "1990-10-4",2002,1003),
(3007, 75.75, "1990-10-4",2004,1002),
(3008, 4273.00, "1990-10-5",2006,1001),
(3010, 1309.95, "1990-10-6",2004,1002),
(3011, 9891.88, "1990-10-6",2006,1001);

select * from orders;

-- Q1
select count(*) from salespeople
where Sname like "a%";

-- Q2
Select snum from orders
where amt > 2000;

-- Q3
select count(*) from salespeople
where city = "Newyork";

-- Q4
SELECT snum FROM salespeople
where city = "London" or city = "Paris";

-- Q5
select snum, onum , odate  from orders;





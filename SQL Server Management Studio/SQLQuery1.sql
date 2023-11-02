--TASK1----------------------------
Create database  task021123
Use task021123
create table Employees (
Id int identity primary key,
Name nvarchar(50),
Surname nvarchar(50),
Position nvarchar(50),
Salary Real 
)
Select Avg(Salary) From Employees
Select Name,Surname,Salary From Employees WHERE (Select Avg(Salary) From Employees) < Salary
Select MAX(Salary) From Employees
Select MIN(Salary) From Employees
--END--------------------------------
--Task2------------------------------
Create database Market
use market
Create table Product(
Id int identity primary key,
Name nvarchar(50),
Price decimal
)
Alter table Product
Add Brand nvarchar(50)
insert into Product
Values
(N'Fanta',1,N'Fanta'),
(N'Cola',1,N'Cola'),
(N'Sprite',1,N'Sprite'),
(N'Bulka',2,N'Xonca'),
(N'Cips',3,N'Lays'),
(N'Jelibom',4,N'Haribo'),
(N'Fistiq',15,N'Mistertum')

Select * From Product where (Select Avg(Price) From Product) > Price
Select * From Product where Price>10
Select  IIF(LEN(Brand)>5, Concat(Name,' ',Brand), Name),'ProductInfo' From Product

select Concat(Name,' ',Brand) 'ProductInfo',Price   from  Product where LEN(Brand)>5
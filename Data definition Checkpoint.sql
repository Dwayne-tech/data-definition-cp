
create table customers (
CustomerID INT primary key not null,
FirstName VARCHAR(50) not null,
LastName VARCHAR(50) not null,
Email VARCHAR(100) not null,
Phone VARCHAR(50) not null,
Address VARCHAR(100) not null,
City VARCHAR(50) not null,
State VARCHAR(50) not null,
Zipcode VARCHAR(50) not null
 );
 select * from customers ;


 drop table products cascade;
create table products (
ProductID INT primary key not null,
ProductName VARCHAR(50) not null,
Description VARCHAR(100) not null,
Price DECIMAL(10,2) not null,
StockQuantity INT not null,
CategoryID INT not null,
foreign key (CategoryID) references Categories(CategoryID)
);

select *from products;


create TABLE Categories (
CategoryID INT primary key not null,
CategoryName VARCHAR(100) not null,
Description VARCHAR (100) not null
); 

select *from Categories;




 create table Orders (
 orderID INT primary key not null,
 CustomerID INT  not null,
 OrderDate DATE not null,
 TotalAmount Decimal(10,2) not null,
 foreign key (CustomerID) references Customers(CustomerID)
 );
 
 select *from Orders;



create table Orderdetails (
OrderdetailID INT primary key not null,
OrderID INT not null,
ProductID INT not null,
Quantity INT not null,
UnitPrice DECIMAL (10,2) not null,
foreign key (OrderID) references Orders(OrderID),
foreign key (ProductID) references products(productID)
);
select *from Orderdetails;

CREATE DATABASE Course 
USE Course
---------------USERS-------------------
CREATE TABLE Users 
(
ID int PRIMARY KEY IDENTITY,
[Name] nvarchar(20),
Surname nvarchar(25) DEFAULT('xxxx'),
Age int,
Email nvarchar(30),
IsDeleted bit
)
INSERT INTO Users ([Name],Surname,Age,Email,IsDeleted) VALUES 
('Kamran','Baxsaliyev',26,'kamranvvd@gmail.com',1),
('Ayxan','',20,'ayxan990@gmail.com ',0)
SELECT * FROM Users
SELECT * FROM Users WHERE Age<=20
SELECT SUM(ID) FROM Users
DROP TABLE Users
------------EDUCATIONS-------------------
CREATE TABLE Educations 
(
ID int PRIMARY KEY IDENTITY,
[Name] nvarchar (20)
)
SELECT * FROM Educations
------------TEACHERS---------------------- 
CREATE TABLE Teachers 
(
ID int PRIMARY KEY IDENTITY,
FullName nvarchar(25),
Age int,
Email nvarchar(35),
[Address] nvarchar(40),
IsDeleted bit)
INSERT INTO Teachers(FullName,Age,Email,[Address],IsDeleted) VALUES 
('Ayxan Taghizada',34,'aykhantaghi@gmail.com','Naxcivan',0),
('Tahmasib Taghiyev',23,'tahmasib990@gmail.com','Tovuz',1),
('Akif Taghiyev',27,'akif453@gmail.com','Baku',0)
SELECT FullName,Age,Address FROM Teachers WHERE IsDeleted=1
SELECT * FROM Teachers WHERE Age>30

----------------EMPLOYEE---------------------
CREATE TABLE Employees
(
ID int PRIMARY KEY IDENTITY,
FullName nvarchar(255) NOT NULL,
Age int NOT NULL, CHECK(Age>0),
Email nvarchar(30) NOT NULL ,
Salary int NOT NULL, CHECK(Salary>300 AND Salary<2000)
)
INSERT INTO Employees(FullName,Age,Email,Salary) VALUES 
('Emil Aliyev',23,'aliyev@gmail,com',543),
('Ali Musayev',54,'musayev43@gmail,com',1004),
('Leman Memmedova',34,'lyamka@gmail,com',1543),
('Elvin Salmanov',47,'salmanov65@gmail,com',1999)
Select * FROM Employees
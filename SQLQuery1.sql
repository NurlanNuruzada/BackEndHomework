CREATE DATABASE HomeworkSQL
USE HomeworkSQL



CREATE TABLE Positions(
  Id INT IDENTITY PRIMARY KEY,
  Position_Name NVARCHAR(50)
)



CREATE TABLE Departments(
[Id] INT IDENTITY PRIMARY KEY,  
[Name] NVARCHAR(50) 
)

CREATE TABLE  Employees(
Id INT IDENTITY PRIMARY KEY,  
First_Name NVARCHAR(50),
Last_Name NVARCHAR(100),
Department_Id INT REFERENCES Departments(Id),
Position_Id INT REFERENCES  Positions(Id)
) 

ALTER TABLE Employees
ADD salary DECIMAL(10, 2) 


INSERT INTO Departments([Name])
VALUES ('HR'),('Marketing'),('Finance')

INSERT INTO Positions(position_name)
VALUES ('Manager'), ('Developer'), ('Analyst');

INSERT INTO Employees(first_name, last_name, department_id, position_id, salary)
VALUES ( 'Nurlan', 'Nuruzada', 1, 1, 3434.00),
       ( 'Elmir', 'Huseynov', 2, 2, 2323.00),
       ( 'Ulvi', 'Kerimov', 3, 2, 9743.00);


SELECT first_name, last_name, Departments.name Department_Name ,Position_Name ,salary FROM Employees 
LEFT JOIN Positions
ON Employees.Position_Id = Positions.Id
LEFT JOIN Departments
ON Employees.Department_Id = Departments.Id







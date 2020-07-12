--creating Table

USE Test1
GO

CREATE TABLE Persons
(
ID INT NOT NULL PRIMARY KEY,
Name NVARCHAR(50) NOT NULL,
Email NVARCHAR(50) NOT NULL,
GenderId int
)

CREATE TABLE Gender
(
ID int NOT NULL PRIMARY KEY,
Gender NVARCHAR(10) 
)

-- Creating a Foreign Key in Persons Table GenderId column

ALTER TABLE Persons ADD CONSTRAINT FK_Persons_GenderId FOREIGN KEY (GenderId) REFERENCES Gender(ID)
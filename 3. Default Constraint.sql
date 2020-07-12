--Adding an Default Constraint to an existing column

USE Test1
GO

ALTER TABLE Persons
ADD CONSTRAINT DF_Persons_GenderId
DEFAULT 3 FOR GenderId

--Adding a new Column with a default constraint

ALTER TABLE Persons
ADD Address NVARCHAR(30) NOT NULL 
CONSTRAINT DF_Persons_Address DEFAULT 'Unknown'


--Dropping a Constraint

ALTER TABLE Persons
DROP CONSTRAINT DF_Persons_Address
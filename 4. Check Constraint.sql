-- Check Constraint limits a value within a range

USE Test1
GO

ALTER TABLE Persons
ADD Age INT NOT NULL
CONSTRAINT CK_Persons_Age CHECK (Age>0 and Age<150)



-- Dropping a Check Constraint

ALTER TABLE Persons
DROP CONSTRAINT CK_Persons_Age
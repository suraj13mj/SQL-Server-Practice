--Creating a Identity column, and Practicising Identity Insert and CheckIdent functions

SELECT * FROM Student

DELETE FROM Student WHERE EmpID = 2

SET IDENTITY_INSERT Student ON
INSERT INTO Student (EmpId,EmpName) VALUES(8,'Savitha')

SET IDENTITY_INSERT Student OFF

INSERT INTO Student VALUES ('Harish')
SELECT * FROM Student

DELETE FROM Student WHERE EmpName = 'Rammana'
DBCC CHECKIDENT ('Student',RESEED,0)

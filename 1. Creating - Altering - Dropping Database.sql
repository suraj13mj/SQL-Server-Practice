-- Creating a new Database

CREATE DATABASE Test

-- Altering Database name once created

ALTER DATABASE Test MODIFY NAME = Test_1

-- Using System stored Procedure to modify Database Name

EXECUTE sp_renamedb 'Test_1','Test_2'

-- Dropping a Database

DROP DATABASE Test_2

-- If Database is currently in use, we have to put the Database in Single User mode and then Drop

ALTER DATABASE Test_2 SET SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE Test_2
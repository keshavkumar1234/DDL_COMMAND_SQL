CREATE DATABASE company_training;
USE company_training;
CREATE TABLE departments (
department_id INT NOT NULL,
dept_name VARCHAR(80) NOT NULL,
city VARCHAR(60)
);
CREATE TABLE employees (
employee_id INT NOT NULL,
employee_name VARCHAR(100) NOT NULL,
email VARCHAR(120),
department_id INT NOT NULL,
salary DECIMAL(10,2),
status VARCHAR(20)
);
-- Add a PRIMARY KEY constraint on departments.department_id.
ALTER TABLE departments ADD PRIMARY KEY (department_ID);

-- Add a PRIMARY KEY constraint on employees.employee_id.
ALTER TABLE EMPLOYEES ADD PRIMARY KEY (EMPLOYEE_ID);

-- Add a new column named location of type VARCHAR(100) to the departments table.
ALTER TABLE DEPARTMENTS ADD COLUMN LOCATION VARCHAR(100);

-- Rename the column dept_name to department_name in the departments table, keeping its existing data type and NOT NULL requirement.
ALTER TABLE DEPARTMENTS CHANGE COLUMN DEPT_NAME DEPARTMENT_NAME VARCHAR(80);

-- Modify employees.salary to DECIMAL(12,2) and ensure that it does not allow NULL values.
ALTER TABLE EMPLOYEES MODIFY COLUMN SALARY DECIMAL(12,2) NOT NULL;

-- Set the default value of employees.status to Active.
ALTER TABLE EMPLOYEES MODIFY COLUMN STATUS VARCHAR(20) DEFAULT('ACTIVE');

-- Add a UNIQUE constraint on employees.email.
ALTER TABLE STAFF ADD CONSTRAINT uinque_email UNIQUE(email);

-- Rename the employees table to staff.
RENAME TABLE EMPLOYEES TO  STAFF;

-- Add a FOREIGN KEY constraint on staff.department_id referencing departments.department_id.
ALTER TABLE STAFF ADD  CONSTRAINT FK_ID FOREIGN KEY (department_id)  REFERENCES departments(department_id);

-- Drop the UNIQUE constraint added to staff.email in Question 7.
ALTER TABLE STAFF MODIFY column email varchar(120) ;

-- Drop the FOREIGN KEY constraint created in Question 9 without dropping the department_id column.
alter table staff drop foreign key  FK_ID;

-- Drop the PRIMARY KEY constraint from the staff table, retaining its employee_id column.
alter table staff drop primary key;

-- Add the PRIMARY KEY constraint back on staff.employee_id.
alter table staff add primary key (employee_id);

-- Drop the location column from the departments table.
alter table departments drop column location;

-- Rename the database from company_training to company_management using MySQL-supported DDL operations.
-- Create the new database, move both tables to it, and remove the old empty database. (MySQL does not support a
-- direct RENAME DATABASE command.)
create database company_management;
rename table old_db_name.company_trainig to new_db_name.company_management;
drop database if exists company_training;

DESCRIBE DEPARTMENTS;
DESCRIBE staff;
DESCRIBE STAFF;


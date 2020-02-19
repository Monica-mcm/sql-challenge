-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


DROP TABLE IF EXISTS EMPLOYEES_PERIOD;
DROP TABLE IF EXISTS DEPARTMENTS;
DROP TABLE IF EXISTS MANAGERS;
DROP TABLE IF EXISTS EMPLOYEES_DATA;
DROP TABLE IF EXISTS EMPLOYEE_WORK;
DROP TABLE IF EXISTS SALARIES;

CREATE TABLE EMPLOYEES_PERIOD (
    emp_no int NOT NULL,
    dept_no  varchar(20) NOT NULL,
    from_date  varchar(30) NOT NULL,
    to_date  varchar(30) NOT NULL
);

CREATE TABLE DEPARTMENTS (
    dept_no varchar(20)  NOT NULL PRIMARY KEY,
    dep_name varchar(30) NOT NULL
);

CREATE TABLE MANAGERS (
    dept_no  varchar(20) NOT NULL,
    emp_no int NOT NULL,
    from_date varchar(30) NOT NULL,
    to_date varchar(20) NOT NULL
);


CREATE TABLE EMPLOYEES_DATA (
    emp_no int NOT NULL PRIMARY KEY,
    birth_date  varchar(30)   NOT NULL,
    first_name  varchar(30)   NOT NULL,
    last_name  varchar(30)   NOT NULL,
    gender  varchar(5)   NOT NULL,
    hired_date  varchar(20)   NOT NULL
);

CREATE TABLE SALARIES (
    emp_no int NOT NULL PRIMARY KEY,
    salary int NOT NULL,
    from_date  varchar(20) NOT NULL,
    to_date  varchar(20) NOT NULL
);

CREATE TABLE EMPLOYEE_WORK (   
	emp_no int NOT NULL,
    title varchar(30) NOT NULL,
    from_date  varchar(20)  NOT NULL,
    to_date varchar(20) NOT NULL
);

COPY employees_period
from 'C:\Program Files\PostgreSQL\12\SQLHomework_data/dept_emp.csv'
with (format csv, header);

copy departments
from 'C:\Program Files\PostgreSQL\12\SQLHomework_data/departments.csv'
with (format csv, header);

COPY managers
from 'C:\Program Files\PostgreSQL\12\SQLHomework_data/dept_manager.csv'
with (format csv, header);

COPY employees_data
from 'C:\Program Files\PostgreSQL\12\SQLHomework_data/employees.csv'
with (format csv, header);

COPY salaries
from 'C:\Program Files\PostgreSQL\12\SQLHomework_data/salaries.csv'
with (format csv, header);

COPY employee_work
from 'C:\Program Files\PostgreSQL\12\SQLHomework_data/titles.csv'
with (format csv, header);






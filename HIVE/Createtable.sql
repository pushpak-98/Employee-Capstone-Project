CREATE DATABASE;
use DATABASE;
drop table if exists employees;
drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_mangr;
drop table if exists salaries;
drop table if exists title;

-- DATA ENGINEERING

---CREATING ALL THE TABLES IN SQL

---Employee Table

create table employeess(emp_no int, emp_title_id varchar(50), birth_date varchar(50), first_name varchar(50), last_name varchar(50), sex varchar(50),hire_date va
rchar(50), no_of_projects int, last_performance_ratings varchar(50),left1 boolean, last_date varchar(50), primary key(emp_no));

---Titles Table
create table title(title_id varchar(50),titles varchar(50));

----salaries;
create table salaries(emp_no int, salary double int);

-- Department Managers (dept_manager.csv)
create table dept_mangr(dept_no varchar(45), emp_no int);

--Department Employees (dept_emp.csv)
create table dept_emp(emp_no int, dept_no varchar(45));

---Departments
create table departments(dept_no varchar(45), dept_name varchar(45)), primary key;

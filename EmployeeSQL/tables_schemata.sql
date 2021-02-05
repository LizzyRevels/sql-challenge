-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/WzT1Zx
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE departments
DROP TABLE dept_emp
DROP TABLE dept_manager
DROP TABLE employees
DROP TABLE salaries
DROP TABLE titles

CREATE TABLE departments (
    dept_no INT NOT NULL PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

SELECT * FROM departments;

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no INT NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager (
    dept_no INT NOT NULL,
    emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_manager;


CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id INT NOT NULL,
	PRIMARY KEY (emp_no, emp_title_id),
    birth_date VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date VARCHAR NOT NULL
);

SELECT * from employees;

    --CONSTRAINT pk_employees PRIMARY KEY (
        --emp_no,emp_title_id
     --)


CREATE TABLE salaries (
    emp_no INT NOT NULL PRIMARY KEY,
    salary INT NOT NULL
);

SELECT * from salaries;

CREATE TABLE titles (
    title_id INT NOT NULL PRIMARY KEY,
    title VARCHAR NOT NULL
);

SELECT * FROM titles;




--ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
--REFERENCES "employees" ("emp_no");

--ALTER TABLE "dept_emp" ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
--REFERENCES "departments" ("dept_no");

--ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
--REFERENCES "departments" ("dept_no");

--ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_title_id" FOREIGN KEY("title_id")
-- REFERENCES "employees" ("emp_title_id");

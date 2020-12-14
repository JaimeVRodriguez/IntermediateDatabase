/*
* CIST 308
* Jaime Rodriguez - 14 December 2020
* Assignment 8.1
*/

-- Lesson 9
-- 1
CREATE TABLE department (
    id NUMBER(7),
    name VARCHAR2(25)
);

-- 2
INSERT INTO department
SELECT deptno, dname
FROM dept;

-- 3
SELECT * FROM department;

-- 4
CREATE TABLE employee (
    id NUMBER(7),
    last_name VARCHAR2(25),
    first_name VARCHAR2(25),
    dept_id NUMBER(7)
);

-- 5
ALTER TABLE employee
MODIFY (last_name VARCHAR2(30));

DESCRIBE employee;

-- 6
SELECT table_name
FROM user_tables
WHERE table_name IN (
    'DEPARTMENT',
    'EMPLOYEE'
);

-- 7
CREATE TABLE employee2 AS
SELECT
    empno id,
    ename last_name,
    deptno dept_id
FROM emp;

-- 8
DROP TABLE employee;

-- 9
RENAME employee2
TO employee;

-- 10
COMMENT ON TABLE employee
IS 'Employee Information';
COMMENT ON TABLE department
is 'Department Information';

SELECT * FROM user_tab_comments
WHERE table_name = 'EMPLOYEE'
OR table_name = 'DEPARTMENT';

-- 11
ALTER TABLE employee
DROP COLUMN last_name;

DESCRIBE employee;

-- 12
CREATE TABLE employee3 AS
SELECT
    empno id,
    ename last_name,
    deptno dept_id
FROM emp;

-- 13
ALTER TABLE employee3
SET UNUSED (dept_id);

DESCRIBE employee3;

-- 14
ALTER TABLE employee3
DROP UNUSED COLUMNS;

DESCRIBE employee3;

-- Lesson 10
-- 1
DROP TABLE employee;

CREATE TABLE employee (
    id NUMBER(7),
    last_name VARCHAR2(25),
    dept_id NUMBER(7),
    CONSTRAINT employee_id_pk PRIMARY KEY(id)
);       
        
-- 2
DROP TABLE department;

CREATE TABLE department (
    id NUMBER(7),
    name VARCHAR2(25),
    CONSTRAINT department_id_pk PRIMARY KEY(id)
);

-- 3
ALTER TABLE employee
ADD CONSTRAINT employee_dept_fk FOREIGN KEY(dept_id)
REFERENCES department(id);

-- 4
SELECT constraint_type, constraint_name
FROM user_constraints
WHERE table_name IN (
    'EMPLOYEE',
    'DEPARTMENT'
);

-- 5
SELECT object_name, object_type
FROM user_objects
WHERE object_name LIKE 'DEPARTMENT%'
OR object_name LIKE 'EMPLOYEE%';

-- 6
ALTER TABLE employee
ADD (salary NUMBER(7));

DESCRIBE employee;
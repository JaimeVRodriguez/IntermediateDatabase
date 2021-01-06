/*
* CIST 308
* Jaime Rodriguez - 04 January 2021
* Assignment 9.1
*/

-- Lesson 11
-- 1
COMMENT ON TABLE emp IS 'Week 1 EMP Table';
COMMENT ON TABLE dept IS 'Week 1 DEPT Table';
COMMENT ON TABLE salgrade IS 'Week 1 SALGRADE Table';
SELECT *
FROM user_tab_comments;

-- 2
CREATE VIEW emp_vu
AS SELECT empno, ename EMPLOYEE, deptno
FROM emp;

SELECT *
FROM emp_vu;

-- 3
SELECT view_name, text
FROM user_views;

-- 4
SELECT employee, deptno
FROM emp_vu;

-- 5
CREATE VIEW dept20
AS SELECT empno EMPLOYEE_ID, ename EMPLOYEE, deptno DEPARTMENT_ID
FROM emp
WHERE deptno = 20
WITH CHECK OPTION CONSTRAINT dept20_ck;

-- 6
DESCRIBE dept20;

SELECT *
FROM dept20;

UPDATE dept20
SET department_id = 20
WHERE employee = 'YANG';

-- 7
CREATE VIEW salary_vu
AS SELECT e.ename Employee, d.dname Department, e.sal Salary, s.grade Grade
FROM emp e, dept d, salgrade s
WHERE e.deptno = d.deptno
AND e.sal BETWEEN s.losal AND s.hisal;

SELECT *
FROM salary_vu;

-- Lesson 13
-- 1
CREATE SEQUENCE dept_id_seq
INCREMENT BY 10
START WITH 80
MAXVALUE 260
NOCACHE
NOCYCLE;

-- 2
SELECT sequence_name, max_value, increment_by, last_number
FROM user_sequences;

-- 3
INSERT INTO department (id, name)
VALUES (dept_id_seq.nextval, '&name');
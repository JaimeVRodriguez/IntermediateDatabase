/*
* CIST 308
* Jaime Rodriguez - 26 October 2020
* Assignment 1.1
*/

-- Lesson 1
-- 1
SELECT * FROM emp;

-- 2
SELECT * FROM dept;

-- 3
SELECT empno, ename, job, hiredate
FROM emp;

-- 4
SELECT DISTINCT job
FROM emp;

-- 5
SELECT empno "Emp #", job "Employee Job", hiredate "Hire Date"
FROM emp;

-- 6
SELECT ename||', '||job "Employee and Title"
FROM emp;

-- 7
SELECT empno||','||ename||','||job||','||mgr||','||hiredate||','||sal||','||comm||','||deptno "Full Data"
FROM emp;

-- lesson 2
-- 1
SELECT ename, sal
FROM emp
WHERE sal > 2850;

-- 2
SELECT ename, deptno
FROM emp
WHERE empno = 7566;

-- 3
SELECT ename, sal
FROM emp
WHERE sal < 1850
OR sal > 2850;

-- 4
SELECT ename, job, hiredate
FROM emp
WHERE hiredate BETWEEN '02/20/1981' AND '05/1/1981'
ORDER BY hiredate ASC;

-- 5
SELECT ename, deptno
FROM emp
WHERE deptno = 10
OR deptno = 30
ORDER BY ename;

-- 6
SELECT ename "Employee", sal "Monthly Salary"
FROM emp
WHERE sal > 1500
AND (deptno = 10
or deptno = 30);

-- 7
SELECT ename, sal, comm
FROM emp
WHERE comm IS NOT NULL
ORDER BY comm;

-- 8
SELECT ename, sal, comm
FROM emp
WHERE comm > (sal * 1.10);
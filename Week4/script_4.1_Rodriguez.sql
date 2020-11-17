/*
* CIST 308
* Jaime Rodriguez - 17 November 2020
* Assignment 4.1
*/

-- Lesson 4
-- 1
SELECT ename, hiredate
FROM emp
WHERE hiredate < (
    SELECT hiredate
    FROM emp
    WHERE ename = 'KENT'
);

-- 2
SELECT MAX(sal) "Maximum", MIN(sal) "Minimum", SUM(sal) "Sum", AVG(sal) "Average"
FROM emp;

-- 3
SELECT job, MAX(sal) "Maximum", MIN(sal) "Minimum", SUM(sal) "Sum", AVG(sal) "Average"
FROM emp
GROUP BY job;

-- 4
SELECT job, COUNT(job)
FROM emp
GROUP BY job;

-- 5
SELECT COUNT(DISTINCT mgr) "Number of Managers"
FROM emp;

-- 6
SELECT (MAX(sal) - MIN(sal)) "PAY GAP"
FROM emp;

-- 7
SELECT mgr, MIN(sal)
FROM emp
WHERE mgr IS NOT NULL
GROUP BY mgr
HAVING MIN(sal) > 1400
ORDER BY MIN(sal) DESC;

-- 8
SELECT d.dname "DName", d.loc "Loc", COUNT(*) "Number of People", ROUND(AVG(e.sal), 2) "Salary"
FROM emp e, dept d
WHERE e.deptno = d.deptno
GROUP BY d.dname, d.loc;

-- 9
SELECT 
    COUNT(*),
    SUM(DECODE(TO_CHAR(hiredate, 'YYYY'), 1980, 1, 0)) "1980",
    SUM(DECODE(TO_CHAR(hiredate, 'YYYY'), 1981, 1, 0)) "1981",
    SUM(DECODE(TO_CHAR(hiredate, 'YYYY'), 1982, 1, 0)) "1982",
    SUM(DECODE(TO_CHAR(hiredate, 'YYYY'), 1983, 1, 0)) "1983"
FROM emp;

-- 10
SELECT
    job "Job",
    SUM(DECODE(deptno, 10, sal)) "Department 10",
    SUM(DECODE(deptno, 20, sal)) "Department 20",
    SUM(DECODE(deptno, 30, sal)) "Department 30",
    SUM(sal) "Total"
FROM emp
GROUP BY job;


/*
* CIST 308
* Jaime Rodriguez - 30 November 2020
* Assignment 6.1
*/

-- Lesson 7
-- 1
SELECT ename, sal
FROM emp
WHERE mgr IN (
    SELECT empno
    FROM emp
    WHERE ename <> 'SINGH'
)
OR mgr IS NULL;

-- 2
SELECT ename, empno, sal, hiredate
FROM emp
WHERE (mgr, deptno) IN (
    SELECT mgr, deptno
    FROM emp
    WHERE empno IN(7902, 7876)
)
AND empno NOT IN(7902, 7876);

-- 3
SELECT ename, sal, deptno
FROM emp outer
WHERE sal > (
    SELECT AVG(sal)
    FROM emp
    WHERE deptno = outer.deptno
);

-- 4
SELECT ename, sal, deptno
FROM emp outer
WHERE sal > (
    SELECT MAX(sal)
    FROM emp
    WHERE job = 'ANALYST'
)
ORDER BY sal DESC;

-- 5
WITH
dept_costs AS(
    SELECT d.dname, sum(e.sal) AS dept_total
    FROM emp e, dept d
    WHERE e.deptno = d.deptno
    GROUP BY d.dname
),
avg_cost AS (
    SELECT SUM(dept_total) / COUNT(*) AS dept_avg
    FROM dept_costs
)
SELECT *
FROM dept_costs
WHERE dept_total > (
    SELECT dept_avg
    FROM avg_cost
)
ORDER BY dname;


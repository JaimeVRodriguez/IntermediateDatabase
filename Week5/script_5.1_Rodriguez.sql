/*
* CIST 308
* Jaime Rodriguez - 23 November 2020
* Assignment 5.1
*/

-- Lesson 6
-- 1
SELECT mgr, MAX(sal)
FROM emp
WHERE mgr IS NOT NULL
GROUP BY mgr;

-- 2
SELECT ename, hiredate
FROM emp
WHERE deptno = (
    SELECT deptno
    FROM emp
    WHERE ename = 'RADNER'
    );

-- 3
SELECT empno, ename
FROM emp
WHERE sal > (
    SELECT AVG(sal)
    FROM emp
)
ORDER BY sal DESC;

-- 4
SELECT mgr, empno, sal
FROM emp
WHERE sal < (
    SELECT AVG(sal)
    FROM emp
);

-- 5
SELECT empno, ename
FROM emp
WHERE deptno IN(
    SELECT deptno
    FROM emp
    WHERE ename LIKE '%T%'
);

-- 6
SELECT ename, deptno, job
FROM emp
WHERE deptno = (
    SELECT deptno
    FROM dept
    WHERE loc = 'ST LOUIS'
);

-- 7
SELECT ename, sal
FROM emp
WHERE mgr = (
    SELECT ename
    FROM emp
    WHERE ename = 'PLISKIN'
);

-- 8
SELECT deptno, ename, job
FROM emp
WHERE deptno = (
    SELECT deptno
    FROM dept
    WHERE dname = 'TRADING'
);

-- 9
SELECT ename, deptno, job
FROM emp
WHERE deptno <> (
    SELECT deptno
    FROM dept
    WHERE loc = 'OMAHA'
);

-- 10
SELECT empno, ename, sal
FROM emp
WHERE sal > (
    SELECT AVG(sal)
    FROM emp
)
AND empno IN (
    SELECT empno
    FROM emp
    WHERE ename LIKE '%T%'
);
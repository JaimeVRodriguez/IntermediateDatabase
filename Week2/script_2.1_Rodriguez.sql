/*
* CIST 308
* Jaime Rodriguez - 3 November 2020
* Assignment 2.1
*/

-- Lesson 3
-- 1
SELECT TO_CHAR(sysdate, 'fmdd Month YYYY') "DATE"
FROM dual;

-- 2
SELECT ename
FROM emp
WHERE ename LIKE '%A%'
AND ename LIKE '%E%';

-- 3
SELECT empno, ename, sal, ROUND((sal * 1.18), 0) "RAISED SAL"
FROM emp;

-- 4
SELECT empno, ename, sal, ROUND((sal * 1.18), 0) "RAISED SAL", ROUND(sal * 1.18) - sal "INCREASE"
FROM emp;

-- 5
SELECT ename, hiredate, TO_CHAR(NEXT_DAY(ADD_MONTHS(hiredate, 6), 'Monday'), 'Day", " "the" Ddspth "of" Month YYYY') "REVIEW"
FROM emp;

-- 6
SELECT ename, ROUND(MONTHS_BETWEEN(sysdate, hiredate), 0) "MONTHS_WORKED"
FROM emp
ORDER BY MONTHS_WORKED;

-- 7
SELECT ename || ' earns ' || TO_CHAR(sal, '$99,999.00') || ' monthly but wants ' || TO_CHAR((sal * 3), '$99,999.00') || '.' "Dream Salaries"
FROM emp;

-- 8
SELECT ename, LPAD(sal,15,'-') "SALARY"
FROM emp;

-- 9
SELECT INITCAP(ename) "Name", LENGTH(ename) || ' characters' "Name Length" 
FROM emp
WHERE ename LIKE 'J%'
OR ename LIKE 'A%'
OR ename LIKE 'M%';

--10
SELECT ename, hiredate, TO_CHAR(hiredate, 'Day') "DAY"
FROM emp
ORDER BY TO_CHAR((hiredate - 1), 'd');
/*
* CIST 308
* Jaime Rodriguez - 10 November 2020
* Assignment 3.1
*/

-- Lesson 4
-- 1
SELECT emp.ename, emp.deptno, dept.dname
FROM emp, dept
WHERE emp.deptno = dept.deptno;

-- 2
SELECT DISTINCT e.job, d.deptno, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND d.deptno = 20;

-- 3
SELECT e.ename, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND e.comm IS NOT NULL;

-- 4
SELECT e.ename, d.dname
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND LOWER(e.ename) LIKE '%s%';

-- 5
SELECT e.ename, e.job, e.deptno, d.dname
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND d.loc = 'OMAHA';

-- 6
SELECT employee.ename "Employee", employee.empno "Emp#", manager.ename "Manager", manager.empno "Mgr#"
FROM emp employee, emp manager
WHERE employee.mgr = manager.empno;

-- 7
SELECT employee.ename "Employee", employee.empno "Emp#", manager.ename "Manager", manager.empno "Mgr#"
FROM emp employee, emp manager
WHERE employee.mgr = manager.empno(+);

-- 8
SELECT e.ename, e.job, d.dname, e.sal, s.grade
FROM emp e, dept d, salgrade s
WHERE e.deptno = d.deptno
AND e.sal BETWEEN s.losal and s.hisal;

-- 9
SELECT e1.ename, e1.hiredate
FROM emp e1, emp e2
WHERE e2.ename = 'KOBAYASHI'
AND e1.hiredate > e2.hiredate;

-- 10
SELECT employee.ename "Employee", employee.hiredate "Emp Hire Date", manager.ename "Manager", manager.hiredate "Mgr Hire Date"
FROM emp employee, emp manager
WHERE employee.mgr = manager.empno
AND employee.hiredate < manager.hiredate;


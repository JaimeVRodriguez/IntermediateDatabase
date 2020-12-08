/*
* CIST 308
* Jaime Rodriguez - 08 December 2020
* Assignment 7.1
*/

-- Lesson 8
-- 1
DESCRIBE my_employee;

-- 2
INSERT INTO my_employee
VALUES (001, 'Patel', 'Ralph', 'rpatel', 795);

-- 3
INSERT INTO my_employee(id, last_name, first_name, userid, salary)
VALUES (002, 'Dancs', 'Betty', 'bdancs', 860);

-- 4
SELECT * FROM my_employee;

-- 5
INSERT INTO my_employee(id, last_name, first_name, userid, salary)
VALUES (&id, '&&last_name', '&&first_name', LOWER(SUBSTR('&first_name',1,1)||SUBSTR('&last_name',1,7)), &salary);


-- 6
SELECT * FROM my_employee;

-- 7
COMMIT;

-- 8
UPDATE my_employee
SET last_name = 'Drexler'
WHERE id = 003;

-- 9
UPDATE my_employee
SET salary = 1000
WHERE salary < 900;

-- 10
SELECT * FROM my_employee;

-- 11
DELETE FROM my_employee
WHERE first_name = 'Betty';

-- 12
COMMIT;

-- 13
SELECT * FROM my_employee;

-- 14
INSERT INTO my_employee
VALUES (004, 'Ropeburn', 'Audry', 'aropebur', 1550);

-- 15
SAVEPOINT number_15;

--16
DELETE FROM my_employee;

-- 17
SELECT * FROM my_employee;

--18
ROLLBACK TO number_15;

-- 19
COMMIT;

--20
SELECT * FROM my_employee;

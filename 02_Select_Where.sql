SELECT ENAME, SALARY FROM EMPLOYEE
WHERE SALARY >= 1500;
SELECT * FROM employee 
WHERE DNO = 10;
SELECT ENAME FROM employee
WHERE SALARY = 5000;
SELECT * FROM employee
WHERE ENAME = 'SCOTT';
SELECT * FROM employee
WHERE ENAME = 'ALLEN';
SELECT * FROM employee
WHERE JOB = 'CLERK';
SELECT * FROM EMPLOYEE
WHERE HIREDATE <= '81/01/01';
SELECT * FROM employee
WHERE hiredate >= '87/01/01';
SELECT * FROM employee
WHERE dno = 10 AND job = 'MANAGER';
SELECT * FROM employee
WHERE salary >= 1000
AND SALARY <= 1500;
SELECT * FROM employee
WHERE DNO = 10 
OR JOB = 'MANAGER';
SELECT * FROM employee
WHERE NOT dno = 10;
SELECT * FROM employee
WHERE  dno <> 10;
SELECT * FROM employee
WHERE commission = 300 OR commission = 500 OR commission = 1400;
SELECT * FROM employee
WHERE salary > 1000
OR SALARY < 1500;
SELECT * FROM employee
WHERE SALARY BETWEEN 1000 AND 1500;
SELECT * FROM employee
WHERE DNO BETWEEN 10 AND 20;
SELECT * FROM employee
WHERE SALARY NOT BETWEEN 1000 AND 1500;
SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';
SELECT * FROM employee
WHERE DNO IN(10, 20);
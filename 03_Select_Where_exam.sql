SELECT ENAME FROM employee
WHERE ENAME LIKE '%A%' AND ENAME LIKE '%E%';
SELECT ENAME, JOB, SALARY FROM employee
WHERE SALARY NOT IN (1600,950,1300)
AND JOB IN('CLERK', 'SALESMAN');
SELECT ENAME, SALARY, COMMISSION FROM employee
WHERE COMMISSION >= 500; 
SELECT ENAME, HIREDATE FROM employee
WHERE HIREDATE BETWEEN '81/01/01' AND '81/12/31';
SELECT ENAME, HIREDATE FROM employee
WHERE HIREDATE LIKE '81%';
SELECT ENAME, JOB FROM employee
WHERE MANAGER IS NULL;
SELECT * FROM employee
WHERE ENAME LIKE 'S&';
SELECT ENO, ENAME, JOB, SALARY, DNO FROM employee
WHERE DNO = 30 
AND JOB = 'SALESMAN' ;
SELECT * FROM employee
WHERE SALARY > 2000
AND DNO IN(20,30);
SELECT ENAME, ENO, SALARY, DNO FROM employee
WHERE ENAME LIKE '%E%'
AND DNO = 30
AND SALARY BETWEEN 1000 AND 2000;
SELECT * FROM employee
WHERE COMMISSION IS NULL
AND manager IS NOT NULL
AND JOB IN('MANAGER', 'CLERK')
AND ENAME NOT LIKE '__L%';
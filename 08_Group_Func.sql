SELECT SUM(SALARY) AS 총액
    , ROUND(AVG(SALARY)) AS 평균
    , MAX(SALARY) AS 최고액
    , MIN(SALARY) AS 최소액
FROM EMPLOYEE;

SELECT MIN(HIREDATE) AS 최고, MAX(HIREDATE) AS 최근 FROM EMPLOYEE;

SELECT SUM(COMMISSION) AS 상여금총합, ROUND(AVG(COMMISSION)) AS 상여금평균 FROM EMPLOYEE;

SELECT COUNT(ENAME) FROM EMPLOYEE;
SELECT COUNT(COMMISSION) FROM EMPLOYEE;
SELECT COUNT(*) FROM EMPLOYEE
WHERE COMMISSION IS NULL;

SELECT COUNT(DISTINCT JOB) FROM EMPLOYEE;

SELECT DNO, TRUNC(AVG(SALARY)) FROM EMPLOYEE
GROUP BY DNO;

SELECT DNO, JOB, COUNT(*), COUNT(*), SUM(SALARY) FROM EMPLOYEE
GROUP BY DNO, JOB;

SELECT DNO, MAX(SALARY) 
FROM EMPLOYEE
GROUP BY DNO
HAVING MAX(SALARY) >= 3000;

SELECT JOB, SUM(SALARY) 
FROM EMPLOYEE
WHERE JOB <> 'MANAGER'
GROUP BY JOB
HAVING SUM(SALARY) >= 5000 ;


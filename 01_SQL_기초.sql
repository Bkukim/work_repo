SELECT * FROM department;
SELECT * FROM employee;
SELECT DNO * 10 FROM DEPARTMENT;
SELECT SALARY * 12 FROM employee;
SELECT SALARY FROM employee;
SELECT ENO, ENAME FROM EMPLOYEE;
SELECT SALARY * 12 + commission FROM employee;
SELECT ENAME, SALARY * 12 + COMMISSION FROM employee;
SELECT ENAME, SALARY * 12 + NVL(COMMISSION, 0) FROM employee;
SELECT ENAME, SALARY * 12 + NVL(COMMISSION, 0) AS 연봉 FROM employee;
SELECT DISTINCT DNO FROM EMPLOYEE;
SELECT 4*5+1 FROM DUAL;
SELECT '홍길동' FROM DUAL;
SELECT SYSDATE FROM DUAL;
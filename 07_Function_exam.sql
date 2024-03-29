SELECT TO_CHAR(HIREDATE, 'YY/MON/DD/DY')
FROM EMPLOYEE;

SELECT SYSDATE - TO_DATE(2024/01/01)
FROM DUAL;

SELECT ENO, NVL(MANAGER, 0), ENO FROM EMPLOYEE;

SELECT ENO, ENAME, JOB, SALARY, 
CASE WHEN JOB = 'ANALYST' THEN SALARY+200
WHEN JOB = 'SALESMAN' THEN SALARY+180
WHEN JOB = 'MANAGER' THEN SALARY+150
WHEN JOB = 'CLERK' THEN SALARY+100
ELSE SALARY+0
END
AS 급여인상
FROM EMPLOYEE;

SELECT ENO, ENAME, SALARY, TRUNC(SALARY/21.5) AS 하루급여, ROUND(SALARY/21.5/8 ) AS 시급
FROM EMPLOYEE;
-- 1) (사원번호가(ENO) 7788인 사원)과
--   담당 업무가(JOB) 같은 사원을(사원이름(ENAME),담당업무(JOB)) 표시하세요.
SELECT ENAME, JOB
FROM EMPLOYEE
WHERE JOB = (SELECT JOB
            FROM EMPLOYEE
            WHERE ENO = 7788);

-- 2) (사원번호가(ENO) 7499인 사원)보다
--   급여가(SALARY) 많은 사원을(사원이름(ENAME),담당업무(JOB)) 표시하세요.
SELECT ENAME, JOB
FROM EMPLOYEE 
WHERE SALARY > (SELECT SALARY
                FROM EMPLOYEE
                WHERE ENO = 7499);

 -- 3) (최소(MIN) 급여를(SALARY) 받는 사원)의 이름,(ENAME)
--    담당 업무(JOB) 및 급여(SALARY)를 표시하세요.               
SELECT ENAME, JOB, SALARY
FROM EMPLOYEE 
WHERE SALARY = (SELECT MIN(SALARY)
                FROM EMPLOYEE);

-- 4) 평균 급여가(SALARY) 가장 적은(MIN) 업무(JOB)를 찾아
--    업무와(JOB) 평균(AVG) 급여를(SALARY) 표시하세요.
--  (설명) == (담당 업무별 평균 급여가 가장 적은) 업무 찾아
--    업무와 평균 급여를 표시하세요.
-- 단, 소수점 나오면 반올림하기(첫째자리에서)
SELECT JOB, ROUND(AVG(SALARY))
FROM EMPLOYEE
GROUP BY JOB
HAVING ROUND(AVG(SALARY)) = (SELECT MIN(ROUND(AVG(SALARY)))
                            FROM EMPLOYEE
                            GROUP BY JOB);

-- 5) (각 부서의 최소(MIN) 급여(SALARY))를 받는
--   사원의 이름(ENAME), 급여(SALARY), 부서번호(DNO)를 표시하세요.
SELECT ENAME, SALARY, DNO
FROM EMPLOYEE
WHERE SALARY IN(SELECT MIN(SALARY)
                FROM EMPLOYEE
                GROUP BY DNO);
                
-- 6) 매니저가(MANAGER) 없는 사원의 이름을(ENAME) 표시하세요.
SELECT ENAME
FROM EMPLOYEE 
WHERE MANAGER IS NULL;

-- 7) 매니저가(MANAGER) 있는 사원(조건1개)의 이름을(ENAME) 표시(조건2개)하세요.
-- 단, 서브쿼리를 이용하세요
-- 사원테이블 : EMPLOYEE
SELECT ENAME
FROM EMPLOYEE
WHERE ENO IN (SELECT ENO
            FROM EMPLOYEE
            WHERE MANAGER IS NOT NULL);

-- 8) (BLAKE와 동일한 부서(DNO))에 속한 사원의 이름과(ENAME) 
--    입사일을(HIREDATE) 표시하는 질의를 작성하세요.
-- 단, BLAKE는 제외
-- 사원테이블 : EMPLOYEE
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE ENAME <> 'BLAKE' AND DNO = (SELECT DNO
            FROM EMPLOYEE
            WHERE ENAME = 'BLAKE');

-- 9) 급여가(SALARY) (평균(AVG) 급여(SALARY))보다 많은 사원들의 
--    사원번호와(ENO) 
--    이름을(ENAME) 표시하되 결과를 급여(SALARY)에 대해서
--    오름차순으로 정렬하세요.
-- 사원테이블 : EMPLOYEE
SELECT ENO, ENAME
FROM EMPLOYEE

WHERE SALARY > (SELECT AVG(SALARY)
                FROM EMPLOYEE
                )
ORDER BY SALARY;

-- 10) (이름에(ENAME) K가 포함된 사원)과 같은 부서에서(DNO) 일하는 사원의 
--   사원번호와(ENO) 이름을(ENAME) 표시하는 
-- 질의를 작성하세요.
-- 사원테이블 : EMPLOYEE
SELECT ENO, ENAME
FROM EMPLOYEE 
WHERE DNO IN (SELECT DNO
            FROM EMPLOYEE
            WHERE ENAME LIKE '%K%');

-- 11) (부서 위치가(LOC) DALLAS인) 사원의 이름과(ENAME) 
--    부서번호(DNO) 및 담당 업무를(JOB) 표시하세요.
-- 단, 서브쿼리를 이용하세요
SELECT DNO, JOB
FROM EMPLOYEE
WHERE ENO IN (SELECT EM.ENO 
                FROM EMPLOYEE EM, DEPARTMENT DE
                WHERE DE.LOC = 'DALLAS');

-- 12) (KING에게) 보고하는 사원의 이름과(ENAME) 급여를(SALARY) 표시하세요.
-- 힌트 : 보고하는 사원의 매니저가(MANAGER) KING 임(7839)
-- 사원테이블 : EMPLOYEE
SELECT ENAME, SALARY
FROM EMPLOYEE
WHERE ENO IN (SELECT ENO
            FROM EMPLOYEE
            WHERE MANAGER = '7839');

-- 13) (RESEARCH 부서(DNO))의 사원에 대한 부서번호(DNO), 
--   사원이름(ENAME) 및 담당 업무(JOB)를 표시하세요.
SELECT DNO, ENAME, JOB
FROM EMPLOYEE
WHERE DNO IN (SELECT EM.DNO
            FROM EMPLOYEE EM, DEPARTMENT DE
            WHERE DE.DNAME = 'RESEARCH');

-- 14(*)) 1)평균(AVG) 급여보다(SALARY) 많은 급여를 받고 (서브쿼리1)
--     2)이름에 M이 포함된 사원과(ENAME) 같은 부서에서(DNO) 근무하는(서브쿼리2)
--    사원의 사원번호(ENO), 이름(ENAME), 급여(SALARY)를 표시하세요
SELECT ENO, ENAME, SALARY, DNO
FROM EMPLOYEE
WHERE SALARY IN (SELECT SALARY
            FROM EMPLOYEE 
            WHERE SALARY > (SELECT AVG(SALARY)
                                FROM EMPLOYEE
                                WHERE ENAME LIKE '%M%'));

-- 16) 전체 사원 중 ALLEN과 같은 직위(JOB)인 사원들의 
-- 직위(JOB), 사원번호(ENO), 사원명(ENAME), 급여(SALARY), 
-- 부서번호(DNO), 부서명(DNAME) 출력하는 SQL문을 작성하세요

SELECT EM.JOB, EM.ENO, EM.ENAME, EM.SALARY, EM.DNO, DE.DNAME
FROM EMPLOYEE EM, DEPARTMENT DE
WHERE EM.JOB = (SELECT JOB 
                FROM EMPLOYEE
                WHERE ENAME = 'ALLEN');

-- 17) 10번 부서에 근무하는 사원 중 30번 부서에는 존재하지 않는 직책을 가진 사원들의
-- 사원번호(ENO), 사원명(ENAME), 직위(JOB), 부서번호(DNO), 부서명(DNAME), 
-- 부서위치를(LOC) 출력하세요

SELECT EM.ENO, EM.ENAME, EM.JOB, EM.DNO, DE.DNAME, DE.LOC
FROM EMPLOYEE EM, DEPARTMENT DE
WHERE EM.DNO = DE.DNO AND EM.DNO = 10 AND EM.JOB NOT IN (SELECT JOB
                            FROM EMPLOYEE
                            WHERE DNO = 30);
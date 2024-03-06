-- 1) EMPLOYEE 테이블의 구조만 복사하여 
--    EMP_INSERT 란 이름의 빈 테이블을 만드시오.
CREATE TABLE ENP_INSERT
AS
SELECT * FROM EMPLOYEE
WHERE 1=2;
-- 2) 본인을 EMP_INSERT 테이블에 추가하되 SYSDATE를 이용해서 입사일을 
--    오늘로 입력하세요.
INSERT INTO ENP_INSERT(ENAME, JOB, MANAGER, HIREDATE, SALARY, COMMISSION, DNO)
VALUES ('KTG', 'STUDENT', NULL, SYSDATE, 2700, 230, 10);
-- 3) EMP_INSERT 테이블에 옆(아시는분) 사람을 추가하되 
--    TO_DATE 함수를 이용해서 입사일을 어제로 입력하세요.
INSERT INTO EMP_INSERT(ENAME, HIREDATE)
VALUES ('김의현', TO_DATE(SYSDATE, 'YYYY/MM/DD'));

COMMIT;

-- 4) EMPLOYEE 테이블의 구조와 내용을 복사하여 
--    EMP_COPY 란 이름의 테이블을 만드세요.
-- 단, EMP_COPY 테이블이 있으면 테이블을 삭제하고 다시 만드세요
DROP TABLE EMP_COPY;
CREATE TABLE EMP_COPY
AS
SELECT * FROM EMPLOYEE;

COMMIT;
-- 5) 사원번호가(ENO) 7788인 사원의 부서번호를(DNO) 10번으로 수정하세요.
--   ( 대상테이블 : EMP_COPY )
UPDATE EMP_COPY
SET 
    DNO = 10
WHERE ENO = 7788;

-- 6) 사원번호가 7788의 담당 업무(JOB) 및 급여를(SALARY) 
--    사원번호 7499의 담당 업무(JOB) 및 급여와(SALARY) 
--    일치하도록 갱신하세요.( 대상테이블 : EMP_COPY )
UPDATE EMP_COPY
SET 
    (JOB, SALARY) = (SELECT JOB, SALARY
                    FROM EMP_COPY
                    WHERE ENO = 7749)
WHERE ENO = 7788;

COMMIT;
-- 7) DEPARTMENT 테이블의 구조와 내용을 복사하여 
--    DEPT_COPY 란 이름의 테이블을 만드세요.
-- 단, DEPT_COPY 있으면 DROP TABLE 명령어로 삭제하고 복사하세요(테이블 설계(구조) 삭제)
DROP TABLE DEPT_COPY;
CREATE TABLE DEPT_COPY
AS
SELECT * FROM DEPARTMENT;

-- 8) DEPT_COPY 테이블에서 부서명이(DNAME) RESEARCH 인 부서를 제거하세요.
DELETE FROM DEPT_COPY
WHERE DNAME = 'RESEARCH';

-- 9) DEPT_COPY 테이블에서 부서 번호가(DNO) 10이거나 40인 부서를 제거하세요.
DELETE FROM DEPT_COPY
WHERE DNO IN (10, 40);

COMMIT;
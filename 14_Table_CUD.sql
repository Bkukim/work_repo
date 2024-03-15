CREATE TABLE DEPT(
    DNO NUMBER(2),
    DNAME VARCHAR2(14),
    LOC VARCHAR2(13)
);

CREATE TABLE EMP(
    ENO NUMBER(4,0),
    ENAME  VARCHAR2(10),
    JOB VARCHAR2(9),
    MANAGER NUMBER(4,0),
    HIREDATE DATE,
    SALARY NUMBER(7,2),
    COMMISSION  NUMBER(7,2),
    DNO NUMBER(2,0)   
);

CREATE TABLE DEPT_COPY
AS 
SELECT * FROM DEPARTMENT;

CREATE TABLE DEPT_COPY2
AS 
SELECT * FROM DEPARTMENT
WHERE 1=2;

-- 테이블에 주석 달기
COMMENT ON TABLE DEPT IS '부서정보';
-- 테이블 주석 확인하기
SELECT comments
FROM all_tab_comments
WHERE table_name = 'DEPT';
-- 컬럼 주석 달기 DEPT
    COMMENT ON COLUMN DEPT.DNO IS   '부서번호';
    COMMENT ON COLUMN DEPT.DNAME IS '부서명';
    COMMENT ON COLUMN DEPT.LOC IS   '부서위치';

--EMP 테이블 컬럼 주석 달기
    COMMENT ON COLUMN EMP.ENO IS '사원번호';
    COMMENT ON COLUMN EMP.ENAME IS '사원명';
    COMMENT ON COLUMN EMP.JOB IS '직위';
    COMMENT ON COLUMN EMP.MANAGER IS '관리자';
    COMMENT ON COLUMN EMP.HIREDATE IS '입사일';
    COMMENT ON COLUMN EMP.SALARY IS '월급';
    COMMENT ON COLUMN EMP.COMMISSION IS '상여금';
    COMMENT ON COLUMN EMP.DNO IS '부서번호';

-- 테이블 삭제하기
DROP TABLE DEPT_COPY;
DROP TABLE DEPT_COPY2;

-- DML문 

CREATE TABLE DEPT_COPY
AS
SELECT * FROM DEPARTMENT
WHERE 1=2;

-- 데이터 넣기
INSERT INTO DEPT_COPY(DNO, DNAME, LOC)
VALUES(10, 'ACCOUNTING', 'NEW YORK');

SELECT * FROM DEPT_COPY;

-- 데이터 삽입 취소 
ROLLBACK;

-- 데이터 삽입 확정
COMMIT;

-- 일부 컬럼만 삽입하기
INSERT INTO DEPT_COPY(DNO, DNAME)
VALUES(10, 'ACCOUNTING');

COMMIT;
-- 예제 7) INSERT 할때 일부 컬럼을 제외하고 추가하기
INSERT INTO DEPT_COPY(DNO, DNAME)
VALUES(30, 'SALES');

-- 데이터 확인
SELECT * FROM DEPT_COPY;

-- 확정
COMMIT;

-- 예제 8) INSERT 할때 명시적으로 NULL 넣기
INSERT INTO DEPT_COPY(DNO, DNAME, LOC)
VALUES(30, 'SALES', NULL);

-- 데이터 확인
SELECT * FROM DEPT_COPY;

-- 확정
COMMIT;

-- 연습 2) DEPT_COPY 테이블에 50 부서 'COMPUTING' 만들고,
--        LOC 는 ' ' 공백으로 INSERT 하세요( 영구 반영 )
INSERT INTO DEPT_COPY(DNO, DNAME, LOC)
VALUES(50, 'COMPUTING', ' ');

COMMIT;

DROP TABLE EMP_COPY;

CREATE TABLE EMP_COPY
AS
SELECT * FROM EMP
WHERE 1=2;

INSERT INTO EMP_COPY(ENO, ENAME, JOB, HIREDATE, DNO)
VALUES(7000, 'CANDY', 'MANAGER', '2012/05/01', 10);
COMMIT;

INSERT INTO EMP_COPY(ENO, ENAME, JOB, HIREDATE, DNO)
VALUES(7020, 'CANDY3', 'MANAGER', SYSDATE, 10);

SELECT * FROM EMP_COPY;

TRUNCATE TABLE EMP_COPY;

-- UPDATE
UPDATE DEPT_COPY
SET
    DNAME = 'PROGRAMMING'
WHERE DNO = 10;
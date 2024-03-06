-- 20_Sequence_Index.sql
-- Sequence(시퀀스) : 호출(실행)할때마다 자동적으로 숫자를 증가시키는 것(객체)
-- 예) 1씩 증가 , 2씩 증가
-- 용도) 기본키(PK:유일 + not null) 용도 : 
--             시퀀스는 숫자가 증가하므로 중복발생없음, null 아님
-- 활용 예) 자유게시판 : No(1 ~ n), 고객 : 고객No(1 ~ n)
-- 용어 : 채번 : 자동적으로 1씩 증가시키는 값
-- 예제 1) SAMPLE_SEQ 시퀀스를 1부터 시작해서 10씩 증가시키는 시퀀스 생성
-- 사용법) CREATE SEQUENCE 시퀀스명
--         INCREMENT BY 증가값
--         START WITH 시작값
--         MINVALUE   최소값 [생략가능]
--         MAXVALUE   최대값 [생략가능]
CREATE SEQUENCE SAMPLE_SEQ
INCREMENT BY 10
START WITH 1;

-- 실행 방법) 시퀀스명.NEXTVAL : 시퀀스가 증가함
SELECT SAMPLE_SEQ.NEXTVAL FROM DUAL;

-- 현재 시퀀스 값 보기) 시퀀스명.CURRVAL
SELECT SAMPLE_SEQ.CURRVAL FROM DUAL;

-- 연습 1) SAMPLE_SEQ2 시퀀스를 1부터 시작해서 1씩 증가시키는 시퀀스 생성
CREATE SEQUENCE SAMPLE_SEQ2
INCREMENT BY 1
START WITH 1;

-- 실행 방법) 시퀀스명.NEXTVAL : 시퀀스가 증가함
SELECT SAMPLE_SEQ2.NEXTVAL FROM DUAL;

-- (참고) 시스템 테이블(딕셔너리 뷰==데이터사전) : USER_SEQUENCES
-- DBA(관리자) 사용
SELECT * 
FROM USER_SEQUENCES;

-- 예제 2) 테이블에 insert 할때 시퀀스 사용하기
-- 실습테이블 : 부서(DEPARTMENT) -> DEPT_TEMP
CREATE TABLE DEPT_TEMP
AS
SELECT * FROM DEPARTMENT
WHERE 1=2;

-- 조회 : 데이터 없음
SELECT * FROM DEPT_TEMP;

-- 1) 시퀀스 생성 : 초기값 1, 증가값 1
CREATE SEQUENCE DEPT_TEMP_SEQ
INCREMENT BY 1
START WITH 1;

--2) INSERT문에 사용하기
INSERT INTO DEPT_TEMP(DNO, DNAME, LOC)
VALUES(DEPT_TEMP_SEQ.NEXTVAL, 'ACCOUNTING', 'NEW YOURK');

COMMIT;

SELECT * FROM DEPT_TEMP;
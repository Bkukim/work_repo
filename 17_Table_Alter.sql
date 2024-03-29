-- 실습테이블 만들기
CREATE TABLE DEPT20
AS
SELECT * FROM DEPARTMENT
WHERE 1 = 2;

-- 날짜 자료형 가지는 BIRTH컬럼 추가하기
ALTER TABLE DEPT20
ADD(BIRTH DATE);

-- 데이터 확인
SELECT * FROM DEPT20;

-- 예제 2) 부서테이블에(DEPT20) 부서명(DNAME) 의 크기를 변경
ALTER TABLE DEPT20 
MODIFY DNAME VARCHAR2(30);

-- 구조보기 명령어
DESC DEPT20;

-- 예제 3) 부서테이블(DEPT20) BIRTH 컬럼 삭제하기
ALTER TABLE DEPT20
DROP COLUMN BIRTH;

-- 데이터 확인
SELECT * FROM DEPT20;

-- 예제 4) 테이블 명 변경 : DEPT20 -> DEPT30
-- 사용법) RENAME 원본테이블명 TO 바꿀테이블명;
RENAME DEPT20 TO DEPT30;
-- 테이블 구조 보기 명령어
DESC DEPT30;
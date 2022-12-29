/*
ROWID와 ROWNUM
    오라클에서 테이블을 생성하면 기본적으로 제공되는 컬럼입니다
    ROWID : ROW 고유의 아이디(ROW를 수정해도 변하지 않음)
    ROWNUM : 행의 INDEX (ROW 삭제시 변경될 수 있다)
*/
SELECT *
FROM(
    SELECT ROWNUM AS rno, employee_id, first_name, last_name 
    FROM employeeds)
ORDER BY rno DESC
;

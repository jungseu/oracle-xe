/*
집합 연산자
    SELECT 리스트의 표현식은 개수가 일치해야 합니다
    데이터 유형은 처번째 QUERY 데이터 유형과 일치해야합니다
    UNION, UNION ALL, INTERSECT, MINUS
*/


/*
UNION 연산자
    중복 행이 제거된 두 QUERY의 행
*/
SELECT employee_id, job_id
FROM employees
UNION
SELECT employee_id, job_id
FROM job_history;

--SELECT employee_id, job_id
--FROM employees
--WHERE employee_id in (SELECT employee_id
                        --FROM job_history);
                        
/*
UNION ALL 연산자
중복 행이 포함된 두 query행
*/
SELECT employee_id, job_id, department_id
FROM employees
UNION ALL
SELECT employee_id, job_id, department_id
FROM job_history 
ORDER BY employee_id;

/*
INTERSECT 연산자
    두 query의 공통적인 행(교집합)
*/
SELECT employee_id, job_id 
FROM employees
INTERSECT
SELECT employee_id, job_id
FROM job_history;


/*
!주의 >데이터 유형을 일치시켜야 합니다
*/

SELECT location_id, department_name "Department",
    TO_/CHAR(NULL) "Warehouse location"
FROM departments
UNION
SELECT lacation_id, TO_CHAR(NULL)"Department",
        state_province
FROM loactions;

DESCRIBE departments;
DESC departments;
DESC locations;

/*
[기본 형식]
    SELECT 컬럼명1, 컬럼명2...                              5
    FROM 테이블명                                          1
    WHERE 조건절                                           2
    GROUP BY 컬럼명                                        3
    HAVING 조건절                                          4
    ORDER BY 컬럼명[ASC|DESC]=>오름차순|내림차순             6
    
*/
SELECT employee_idm first_name AS name 
FROM employees
WHERE name like '%a%'
ORDER BY name 
;                




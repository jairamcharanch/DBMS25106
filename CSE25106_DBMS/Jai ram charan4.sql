--practice exp-4
ALTER TABLE employee ADD(COMM NUMBER(10));

SELECT e_no,emp_name,salary,salary+comm,(12*(salary+comm)) "annual salary",((salary+comm)/30) "avg_sal_month" from employee; -- We are adding a integer value to NULL value, so we get a NULL value in the output.

SELECT e_no,emp_name,salary,(12*(salary+nvl(comm,0))) "annual salary",((salary+nvl(comm,0)/30)) "avg_sal_month" from employee;-- We use NVL function to overcome above problem.It makes Null value to 0 #NVL(comm ,0).

SELECT * from employee where dept_no=20 and salary>2000 ;

SELECT * from employee where (dept_no=10 or dept_no =30) ; -- OR case  ( dept_no = 10 or 30 is wrong)

SELECT * from employee;

SELECT * from employee where salary between 1000 and 9999 ; --BETWEEN case

SELECT * from employee where comm is null ; -- IS NULL is used here.

SELECT * from employee1;

SELECT * from employee1 where mgr_id is null; 

SELECT * FROM employee WHERE emp_name like 'B%';

SELECT * FROM employee WHERE emp_name LIKE 'B___U';

SELECT * FROM employee WHERE dept_no=10     
union                                         
SELECT * FROM employee where dept_no = 30 ;  -- Eliminates duplicate.

SELECT * FROM employee WHERE dept_no=10       
union all                                    
SELECT * FROM employee where dept_no = 30;   --Gives duplicates also.

SELECT * FROM employee WHERE dept_no=10       
intersect                                       
SELECT * FROM employee where dept_no = 30;    

SELECT dept_no FROM employee      
union                                         
SELECT dept_no FROM employee1;    

SELECT dept_no FROM employee      
union all                                     
SELECT dept_no FROM employee1;

SELECT dept_no FROM employee      
minus                                        
SELECT dept_no FROM employee1;

RENAME employee3 to employee1; -- Changed table name.
 
--Exp-4

CREATE TABLE dept (
    Dept_no VARCHAR2(6),
    Dept_name CHAR(6),
    Job_id CHAR(3),
    Salary NUMBER(5)
);

SELECT * from dept;
INSERT INTO dept (dept_no,dept_name,job_id,salary) VALUES (10,'CSE',106,9999);
INSERT INTO dept (dept_no,dept_name,job_id,salary) VALUES (20,'CSE',107,9929);
INSERT INTO dept (dept_no,dept_name,job_id,salary) VALUES (60,'CSE',116,3999);
INSERT INTO dept (dept_no,dept_name,job_id,salary) VALUES (40,'CSE',106,5999);
--Query 1
SELECT dept_no FROM employee      
union                                          
SELECT dept_no FROM dept;
--Query 2
SELECT dept_no FROM employee      
union all                                         
SELECT dept_no FROM dept;
--Query 3
SELECT dept_no FROM employee      
minus                                         
SELECT dept_no FROM dept;
--Query 4
SELECT dept_no FROM dept      
minus                                         
SELECT dept_no FROM employee;










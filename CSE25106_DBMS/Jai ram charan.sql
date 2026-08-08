--Experiment 1
CREATE TABLE Employee (
    Emp_no VARCHAR2(6),
    E_name CHAR(8),
    E_address VARCHAR2(18),
    E_Ph_no NUMBER(10),
    Dept_no VARCHAR2(6),
    Dept_name CHAR(6),
    Job_id CHAR(3),
    Salary NUMBER(5)
);

ALTER TABLE Employee ADD (HIREDATE DATE);

ALTER TABLE Employee MODIFY (Job_id VARCHAR2(6));

ALTER TABLE Employee RENAME COLUMN Emp_no TO E_no;

ALTER TABLE Employee MODIFy (Dept_name CHAR(3));

desc Employee


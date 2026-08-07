--Experiment 2
INSERT INTO Employee (e_no,emp_name,e_address,e_ph_no,dept_no,dept_name,job_id,salary) VALUES (1,'JAI','GNT',9912681111,10,'CSE',106,9999);
INSERT INTO Employee (e_no,emp_name,e_address,e_ph_no,dept_no,dept_name,job_id,salary) VALUES (2,'BHANU','VJA',9912681171,20,'CSM',142,9999);
INSERT INTO Employee (e_no,emp_name,e_address,e_ph_no,dept_no,dept_name,job_id,salary) VALUES (3,'KIRAN','GNT',9912681611,30,'CCE',106,999);
INSERT INTO Employee (e_no,emp_name,e_address,e_ph_no,dept_no,dept_name,job_id,salary) VALUES (&e_no,'&emp_name','&e_address',&e_ph_no,&dept_no,'&dept_name',&job_id,&salary);
SELECT * FROM Employee;
SELECT *  FROM Employee Where dept_no = 10;
UPDATE Employee SET e_address = 'NAGPUR' WHERE e_no = 4;
UPDATE Employee SET dept_name = 'MECH' WHERE e_no = 4;
SELECT * FROM Employee WHERE dept_name='MECH';
INSERT INTO Employee (e_no,emp_name,e_address,e_ph_no,dept_no,dept_name,job_id,salary) VALUES (&e_no,'&emp_name','&e_address',&e_ph_no,&dept_no,'&dept_name',&job_id,&salary);
DELETE FROM Employee WHERE dept_name = 'sale';
UPDATE Employee SET emp_name = 'JAMES' WHERE e_no = 4;
UPDATE Employee SET e_ph_no ='' WHERE emp_name = 'JAMES';
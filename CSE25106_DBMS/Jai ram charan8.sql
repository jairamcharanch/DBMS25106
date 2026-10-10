DECLARE
hike number(9,2);
ns number(9,2);

t_empno emp.empno%type;
t_deptno emp.deptno%type;
t_name emp.ename%type;
t_sal emp.sal%type;
t_job emp.job%type;

BEGIN

select empno,ename,deptno,sal 
into t_empno,t_name,t_deptno,t_sal from emp
where empno = '&empno';

t_sal := t_sal * 12;
hike := 0;

if t_job = 'MANAGER' then
hike := 0.10 * t_sal;
end if;
ns := t_sal + hike;
dbms_output.put_line('employee no is ...'||t_empno);
dbms_output.put_line('employee name is ...'||t_name);
dbms_output.put_line('employee deptno is ...'||t_deptno);
dbms_output.put_line('employee hike is ...'||hike);
dbms_output.put_line('employee net salary is ...'||ns);

exception

when NO_DATA_FOUND then
dbms_output.put_line('the specified employee no does not exists');

END;


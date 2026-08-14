--Practice 3
SELECT abs(68),abs(-6) from dual;

SELECT exp(6),exp(-3) from dual;

SELECT power(6,3),power(8,8),power(5,4) from dual;

SELECT mod(8,5),mod(68,6) from dual;

SELECT round(68.783,2),round(20.236,2),round(-23.446,2),round(49.783,-2),round(50.783,-2) from dual; --((,,+ve) - decimal is rounded),(,-ve)- main is rounded)

SELECT trunc(20.236,2),trunc(68.783,2) from dual; --cut after 2nd decimal (More powerful than round)

SELECT sqrt(3),sqrt(17),sqrt(64),sqrt(2.4) from dual; --Negative value is not taken(error)

SELECT count(e_no) from employee;

SELECT sum(salary) from employee;

SELECT sum(2+356+68),sum(6-3),sum(2*2+2) from dual;

SELECT min(salary),avg(salary),max(salary) from employee;

SELECT initcap(emp_name),emp_name,initcap('HELLO WORLD') from employee; -- CAPITAl for first letter of every word

SELECT upper('JAI ram'),lower('JAI ram') from dual;

SELECT ltrim('jairam','jai'),rtrim('jairam','ram') from dual; --doubt

SELECT replace('jai and jam','j','r') from dual; --'j' is replaced with 'r'. if the replcement value is not given by default empty space is taken.

SELECT concat('jai','ram') "combined" from dual;

SELECT concat(sysdate,'20-JUN-26') "combined" from dual;

SELECT lpad('JAI',6,'@'),rpad('RAM',6,'.') from dual;

SELECT length('jairam'),length('jai ram') from dual;
--IMP***(SUB String)(substr)
SELECT substr('jairamcharan',5,6),substr('jairamcharan',5) from dual;
--IMP***(In String)(instr)
SELECT instr('jairam','ra') from dual; --Gives postion of ra in the string. Shows only the first occurance of the substring.








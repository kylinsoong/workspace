select * from emp;
select * from dept;
select * from salgrade;
select * from bonus;

drop table employee;
create table employee(
emp_id number(10) primary key not null,
first_name varchar2(25),
last_name varchar2(25), 
dept varchar2(10),
salary  number(6)
);
insert into employee values(1111, 'Kylin', 'Soong', 'BPM', 8000); 
insert into employee values(1112, 'Kylin', 'Soong', 'BPM', 8000);
insert into employee values(1113, 'Kylin', 'Soong', 'BPM', 8000);
insert into employee values(1114, 'Kylin', 'Soong', 'BPM', 9000);
insert into employee values(1115, 'Kylin', 'Soong', 'BPM', 9000);
insert into employee values(1116, 'Kylin', 'Soong', 'BPM', 9000);
select * from employee;
--------------------------------------------------------------------
DECLARE  
  var_salary number(6);  
  var_emp_id number(6) := 1116;
BEGIN
  select salary into var_salary from employee where emp_id = var_emp_id;
  dbms_output.put_line(var_salary);
  dbms_output.put_line('The employee '|| var_emp_id ||' has  salary  '|| var_salary );
END;
/     

DECLARE
  var_num1 number;
  var_num2 number;
BEGIN
  var_num1 := 100;
  var_num2 := 200;   
  DECLARE
    var_mult number;
  BEGIN
    var_mult := var_num1 * var_num2;   
    dbms_output.put_line('var_mult '|| var_mult);  
  END;
  dbms_output.put_line('var_num1 '|| var_num1);  
  dbms_output.put_line('var_num2 '|| var_num2);  
END;
/  

DECLARE  
  salary_increase CONSTANT number(3) := 100; 
BEGIN   
  dbms_output.put_line (salary_increase); 
END; 
/


DECLARE
  TYPE employee_type IS RECORD
  ( 
    employee_id number(5),  
    employee_first_name varchar2(25),  
    employee_last_name employee.last_name%type,  
    employee_dept employee.dept%type 
  );
  employee_salary employee.salary%type;
  employee_rec employee_type;
  employee_rec_all employee%ROWTYPE;
  var_emp_id number(6) := 1116;
  var_test_1 varchar2(25);
  var_test_2 varchar2(25);
BEGIN
SELECT first_name, last_name, dept INTO employee_rec.employee_first_name, employee_rec.employee_last_name, employee_rec.employee_dept from employee where emp_id = var_emp_id;
SELECT * INTO employee_rec_all from employee where emp_id = var_emp_id;
var_test_1 := employee_rec.employee_first_name;
dbms_output.put_line(var_test_1);
var_test_2 := employee_rec_all.first_name;
dbms_output.put_line(var_test_2);
commit;
END;
/


DECLARE  
  var_rows number(5);
BEGIN
  UPDATE employee SET salary = salary + 1000;
  IF SQL%NOTFOUND THEN
     dbms_output.put_line('None of the salaries where updated');
  ELSIF SQL%FOUND THEN
     var_rows := SQL%ROWCOUNT;
     dbms_output.put_line('Salaries for ' || var_rows || ' employees are updated');  
  END IF;
  commit;
END;
/

DECLARE 
   emp_rec employee%ROWTYPE;
   CURSOR emp_cur IS SELECT * FROM employee WHERE salary > 5000;
BEGIN
   OPEN emp_cur;
   FETCH emp_cur INTO emp_rec;
   dbms_output.put_line (emp_rec.first_name || '  ' || emp_rec.last_name || '  ' || emp_rec.dept || '  ' || emp_rec.salary);
   CLOSE emp_cur; 
END;
/   

-- Simple Loop
DECLARE 
   emp_rec employee%ROWTYPE;
   CURSOR emp_cur IS SELECT * FROM employee WHERE salary > 5000;
BEGIN
   IF NOT emp_cur%ISOPEN THEN
     OPEN emp_cur;
   END IF;
   
   LOOP
     FETCH emp_cur INTO emp_rec;
     EXIT WHEN emp_cur%NOTFOUND;
     dbms_output.put_line (emp_rec.first_name || '  ' || emp_rec.last_name || '  ' || emp_rec.dept || '  ' || emp_rec.salary);
     END LOOP;
     
   IF emp_cur%ISOPEN THEN
     CLOSE emp_cur; 
   END IF;
END;
/ 

-- While Loop
DECLARE 
   emp_rec employee%ROWTYPE;
   CURSOR emp_cur IS SELECT * FROM employee WHERE salary > 5000;
BEGIN
   IF NOT emp_cur%ISOPEN THEN
     OPEN emp_cur;
   END IF;
   
   FETCH emp_cur INTO emp_rec;
   WHILE emp_cur%FOUND 
     LOOP
     dbms_output.put_line (emp_rec.first_name || '  ' || emp_rec.last_name || '  ' || emp_rec.dept || '  ' || emp_rec.salary);
     FETCH emp_cur INTO emp_rec;
     END LOOP;
     
   IF emp_cur%ISOPEN THEN
     CLOSE emp_cur; 
   END IF;
END;
/ 

-- For Loop
DECLARE 
   emp_rec employee%ROWTYPE;
   CURSOR emp_cur IS SELECT * FROM employee WHERE salary > 5000;
BEGIN  
   FOR emp_rec IN emp_cur
     LOOP
     dbms_output.put_line (emp_rec.first_name || '  ' || emp_rec.last_name || '  ' || emp_rec.dept || '  ' || emp_rec.salary);
     END LOOP;
     
   IF emp_cur%ISOPEN THEN
     CLOSE emp_cur; 
   END IF;
END;
/ 


-- procedure
CREATE OR REPLACE PROCEDURE employer_details
IS
  emp_rec employee%ROWTYPE;
  CURSOR emp_cur IS SELECT * FROM employee WHERE salary > 5000;
BEGIN  
   FOR emp_rec IN emp_cur
     LOOP
     dbms_output.put_line (emp_rec.first_name || '  ' || emp_rec.last_name || '  ' || emp_rec.dept || '  ' || emp_rec.salary);
     END LOOP;
     
   IF emp_cur%ISOPEN THEN
     CLOSE emp_cur; 
   END IF;
END;
/ 

execute employer_details;
--------------------------------------------------------------------

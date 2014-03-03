-- create demo table
create table Employee(
     ID                 VARCHAR2(4 BYTE)         NOT NULL,
     First_Name         VARCHAR2(10 BYTE),
     Last_Name          VARCHAR2(10 BYTE),
     Start_Date         DATE,
     End_Date           DATE,
     Salary             Number(8,2),
     City               VARCHAR2(10 BYTE),
     Description        VARCHAR2(15 BYTE)
   );

-- prepare data   
insert into Employee(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description) values ('01', 'Jason', 'Martin', to_date('19960725','YYYYMMDD'), to_date('20060725','YYYYMMDD'), 1234.56, 'Toronto', 'Programmer');
insert into Employee(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description) values ('02','Alison',   'Mathews', to_date('19760321','YYYYMMDD'), to_date('19860221','YYYYMMDD'), 6661.78, 'Vancouver','Tester');
insert into Employee(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description) values ('03','James',    'Smith',   to_date('19781212','YYYYMMDD'), to_date('19900315','YYYYMMDD'), 6544.78, 'Vancouver','Tester');
insert into Employee(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description) values ('04','Celia',    'Rice',    to_date('19821024','YYYYMMDD'), to_date('19990421','YYYYMMDD'), 2344.78, 'Vancouver','Manager');
insert into Employee(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description) values ('05','Robert',   'Black',   to_date('19840115','YYYYMMDD'), to_date('19980808','YYYYMMDD'), 2334.78, 'Vancouver','Tester');
insert into Employee(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description) values ('06','Linda',    'Green',   to_date('19870730','YYYYMMDD'), to_date('19960104','YYYYMMDD'), 4322.78,'New York',  'Tester');
insert into Employee(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description) values ('07','David',    'Larry',   to_date('19901231','YYYYMMDD'), to_date('19980212','YYYYMMDD'), 7897.78,'New York',  'Manager');
insert into Employee(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description) values ('08','James',    'Cat',     to_date('19960917','YYYYMMDD'), to_date('20020415','YYYYMMDD'), 1232.78,'Vancouver', 'Tester');

-- display data in the table
select ROWNUM, ID from Employee;
select ID from (select ROWNUM r , ID FROM Employee) where r > 3;
-- explicit cursor
drop procedure orderExtract;
create procedure orderExtract IS
set serverout on;
declare
   cursor myCursor (pid in number) is select * from employee where id = pid;
   myEmployee employee%rowtype;
begin
   dbms_output.put_line('Getting employees ID= 03');
   open myCursor(03);
   loop
   fetch myCursor into myEmployee;
   exit when myCursor%notfound;
   dbms_output.put('Employee id ' || myEmployee.id || ' is ');
   dbms_output.put_line(myEmployee.first_name || ' ' || myEmployee.last_name);
   end loop;
   close myCursor;
   dbms_output.put_line('Getting employees ID= 01');
   open myCursor(01);
   loop
   fetch myCursor into myEmployee;
   exit when myCursor%notfound;
   dbms_output.put('Employee id ' || myEmployee.id || ' is ');
   dbms_output.put_line(myEmployee.first_name || ' ' || myEmployee.last_name);
   end loop;
   close myCursor;
end;
-- migration
create or replace package migpackage as
type mig_cursor is ref cursor;
type order_cursor is ref cursor;
type plan_cursor is ref cursor; 
type pc_cursor is ref cursor;
end migpackage;

create or replace procedure migprocedure
(
tableName in varchar2,
pageSize in number,
page in number,
allRows out number,
p_cursor out migpackage.mig_cursor
)
is
v_sql varchar2(1000);
p_slah varchar2:='/';
v_begin number:=(page - 1)*pageSize + 1;
v_end number:=page*PageSize;
begin
v_sql:='SELECT  extract(data, '||p_slah||') FROM EXECUTIONPLAN WHERE 1=1';
IF NOT p_cursor%ISOPEN THEN
open p_cursor for v_sql;
END IF;
--close p_cursor;
end;

EXPLAIN PLAN FOR select * from (select t1.*, rownum rn from(select * from ORDERS)t1 where rownum<=80000) where rn >=79800;

'select * from (select t1.*, rownum rn from(select * from '||tableName||')t1 where rownum<='||v_end||') where rn >='||v_begin
select count(1) from orders;
SELECT  extract(data, '/') FROM ORDERS
'SELECT target FROM (SELECT ROWNUM r, extract(data, '/') target FROM orders WHERE 1=1  AND (extractValue(data, '/order/header/status') = 'COMPLETE'  OR extractValue(data, '/order/header/status') = 'TEMPLATE' )   AND  ( extractValue(data, '/order/header/statusChanged')> to_date('2000-12-14T07:31:00','YYYY-MM-DD"T"HH24:MI:SS') )  ) WHERE r >='||v_begin||' AND r <='
 

select * from jeopardyinfotype;
select * from jeopardyinfotype_to_jeopardy;
select * from processjeopardytype;
select * from jeopardysupertype
select * from jeopardysupertype_to_def
select * from jeopardydeftype;
select * from actions
select * from  udftype;
select * from plan_to_udftype
select * from dependency

select * from plan_to_dependency
select * from starttimedependencytype
select * from planitemdependencytype
select * from externaldependencytype
select * from fulfilmentsystemtype
select * from fsystemtype_property
select * from property
select * from fulfilmentproc
select * from fulfilmentproc_field
select * from field

select * from executionplan
select * from xreftype
select * from orderlineids
select * from executionplanitemtype
select * from processversion
select * from milestonetype
select * from processsectiontype
select * from processversion_to_section
select * from processversion_to_milestone
select * from scheduleableitem

select * from resourcetype
select * from pointtype
select * from milestonetype_field
select * from milestonetype_property
select * from items_to_items
SELECT * PROCESSVERSION_TO_SECTION
SELECT * PROCESSVERSION_TO_MILESTONE

objecttype
component
component_to_objecttype
componentusers
componentgroups
process
select * from characteristicvaluetype
select * from characteristictype
select * from ctype_to_cvaluetype
select * from orderline_to_ctype
select * from orderline_to_udftype
select * from orderline_to_slatype
select * from slatype
select * from geographicaddresstype
select * from orderheader_to_slatype
select * from orderheader_to_udftype

select * from orderline
select * from orderheader
select * from forder_to_orderline
select * from linetype
select * from order_to_linetype
select * from order_to_fulfilmentorder
select * from fulfilmentorder
select * from advisorystringtype
select * from header
select * from order_

select * from orchsubject
select * from subject_to_expdependency
select * from subject_to_impdependency
select * from subject_observers
select * from subjectdef_to_property
select * from dependencytype

SELECT * FROM USER_CONSTRAINTS WHERE CONSTRAINT_NAME = 'SYS_C00164344'

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'EXECUTIONPLAN'
create index orders_num_index on orders(num)
create index plans_num_index on executionplan(num)
explain plan for select count(num) from executionplan;
drop index plan_num_index
drop index orders_num_index
select count(num) from orders;
select count(num) from executionplan
SELECT num FROM ORDERS order by num desc
select * from dba_indexes where table_name = 'ORDERS';
select * from dba_indexes where table_name = 'EXECUTIONPLAN';


SELECT * FROM CLASSIFICATION;
SELECT * FROM CLASSIFICATIONGROUP;
SELECT * FROM MDCLASSVALUETYPE;
SELECT * FROM MOCLASSIFICATIONVALUE;

DELETE FROM JMSEXCEPTIONS;





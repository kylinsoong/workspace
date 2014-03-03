create or replace package migpackage as
type mig_cursor is ref cursor;
type order_cursor is ref cursor;
type plan_cursor is ref cursor; 
type pc_cursor is ref cursor;
end migpackage;

create or replace procedure migprocedure
(
tableName in varchar2,
allRows out number
)
is
v_sql varchar2(1000); 
begin 
v_sql:='select count(*) from '||tableName; 
execute immediate v_sql into allRows; 
end; 

create or replace procedure migPageProcedure
(
tableName in varchar2,
pageSize in number,
currentPage in number
-- v_page out migpackage.mig_cursor
)
is
v_sql varchar2(1000); 
begin 

end; 
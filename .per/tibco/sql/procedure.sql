create table ta(
hid varchar2(100) primary key,
name varchar2(255)
)

create table tb(
hid varchar2(100) primary key
)

insert into ta values('100', 'name');
insert into ta values('101', 'name');
insert into ta(hid) values('103');
insert into tb values('100|12');
insert into tb values('100|13');
insert into tb values('101|12');
insert into tb values('102|12');

select * from ta;
select * from ta where name is null;
select * from tb;

select ta.hid ahid, tb.hid bhid from tb inner join ta on substr(tb.hid, 1, instr(tb.hid, '|') - 1) = ta.hid;
select bhid from (select ta.hid ahid, tb.hid bhid from tb left join ta on substr(tb.hid, 1, instr(tb.hid, '|') - 1) = ta.hid) where ahid is null;

CREATE OR REPLACE PROCEDURE PROC_T IS
BEGIN

  delete from tb b
   where substr(b.hid, 1, instr(b.hid, '|') - 1) in (select hid from ta);
  commit;
END PROC_T;
/
exec PROC_T();


CREATE OR REPLACE FUNCTION plan_pk_exist(v_pk in varchar2) RETURN varchar2 as
v_result varchar2(10);
begin
 select hid from ta where hid = v_pk;
  v_result:='1';
  return v_result;
 exception
  when no_data_found then
  v_result:='0';
  return v_result;
end plan_pk_exist;

select plan_pk_exist('100') from dual

----------------------------------------------------------
create or replace function get_user return varchar2 is  
  v_user varchar2(50);   
begin  
  select username into v_user from user_users;   
  return v_user;   
end get_user;

select get_user from dual;

 var v_name varchar2();
 exec :v_name:=get_user;
 print v_name   

exec dbms_output.put_line('当前数据库用户是：'||get_user);

--------------------------------------------------------
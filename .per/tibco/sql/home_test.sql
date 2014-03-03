-------------------------------------------------------------------------------------------------------------------
-- 1 Create table
--			basic create table
--      use subquery create table
-------------------------------------------------------------------------------------------------------------------
drop table home_test_1;
create table home_test_1(
eid number(10),
name varchar2(20),
hairdate date default sysdate
);
insert into home_test_1 values(1001, 'kylin', null);
SELECT * FROM HOME_TEST_1;

create table myemp1(id, name, salary) as select empno, ename, sal*12 annsal from emp;
create table myemp2 as select empno, ename, sal*12 annsal from emp;

-------------------------------------------------------------------------------------------------------------------
-- 2 Modify table structure
--		Add column
--		Modify column(can not modify column name)
--		Drop a exists column
-------------------------------------------------------------------------------------------------------------------
alter table home_test_1
add(
sex varchar2(5),
phone varchar2(15) default '15810596289'
)
insert into home_test_1(eid, name, sex) values(1003, 'home_test_1', 'Male'); 

alter table home_test_1
modify(
sex varchar2(8)
)
insert into home_test_1(eid, name, sex) values(1004, 'home_test_1', 'Female'); 

alter table home_test_1
drop(
sex, phone
)

-------------------------------------------------------------------------------------------------------------------
-- 3 truncate table: remove all data from table, DDL, can not rollback
-------------------------------------------------------------------------------------------------------------------
truncate table home_test_1;

-------------------------------------------------------------------------------------------------------------------
-- 4. drop table
-------------------------------------------------------------------------------------------------------------------
drop table myemp1;
drop table myemp2;

-------------------------------------------------------------------------------------------------------------------
-- 5. rename table
-------------------------------------------------------------------------------------------------------------------
rename home_test_1 to home_test;

-------------------------------------------------------------------------------------------------------------------
-- 6. Oracle dictionary
-------------------------------------------------------------------------------------------------------------------
select table_name from user_tables;
select table_name from all_tables;
select table_name from dba_tables;

select object_type from user_objects;
select object_type from all_objects;
select object_type from dba_objects;

select distinct object_type from user_objects;
select distinct object_type from all_objects;
select distinct object_type from dba_objects;



-------------------------------------------------------------------------------------------------------------------
-- 7. Constraint: not null
--		check the column is not null
--		only defined on column
--		if constraint name not defined the oracle system give a default name like SYS_C*
-------------------------------------------------------------------------------------------------------------------
create table home_test(
id number(10) not null,
name varchar2(25),
birth date constraint birth_nn not null
);
select * from user_constraints;
select * from user_constraints where table_name='HOME_TEST';

-------------------------------------------------------------------------------------------------------------------
-- 8. Unique key
--		to make sure a column's value or a a column group's value is unique
--		allow null value
--		oracle will create corresponding index for unique key constraint
--		unique key constranit can be defined both	column-based and table-based 
-------------------------------------------------------------------------------------------------------------------
create table home_test(
cid number(10) unique,
name varchar2(25)
)
create table home_test(
cid number(10),
name varchar2(25),
constraint home_test_cid_un unique (cid)
)
create table home_test(
cid number(10),
name varchar2(25),
record number(5),
constraint home_test_cidRecord_un unique (cid, record)
)
select * from user_constraints where table_name='HOME_TEST'

-------------------------------------------------------------------------------------------------------------------
-- 9. Primary key
--		to make sure a column is unique and not null
--		any table only allow one primary key exists, and the primary key can be one column or a column group
--		oracle will create corresponding index for primary key
--		primary key constranit can be defined both	column-based and table-based 
-------------------------------------------------------------------------------------------------------------------
create table home_test(
cid number(10) primary key,
name varchar2(25)
)
create table home_test(
cid number(10),
name varchar2(25),
constraint home_test_pk primary key(cid)
)
create table home_test(
cid number(10),
name varchar2(25),
record number(5),
constraint home_test_cid_record_pk primary key(cid,record)
)
select * from user_constraints where table_name='HOME_TEST'

-------------------------------------------------------------------------------------------------------------------
-- 10 Foreign key
--		foreign key use to relate two tables' reference, usually implement by reference two tables's column
--		subtable's forign key must be exist's in maintable or null
--		subtable's forign key must be maintable's primary key or unique key
--		foreign key constranit can be defined both	column-based and table-based
-------------------------------------------------------------------------------------------------------------------
create table main_table(
mid number(5),
name varchar2(25),
constraint main_table_mid_pk primary key(mid)
);
create table sub_table(
sid number(5),
name varchar2(25),
rid number(5),
constraint sub_table_id_pk primary key(sid),
constraint sub_table_rid_fk foreign key(rid) references main_table(mid)
)
select * from user_constraints where table_name='MAIN_TABLE';
select * from user_constraints where table_name='SUB_TABLE';
insert into main_table values(100, 'kylin');
insert into main_table values(101, 'kylin');
insert into main_table values(102, 'kylin');
insert into sub_table values (1, 'kobe', 100);
insert into sub_table values (2, 'kobe', 101);
insert into sub_table values (3, 'kobe', 102);
insert into sub_table values (4, 'kobe', 102);

CREATE TABLE PERSON (
HID NUMBER(19,0) not null,
NAME VARCHAR2(255),
CONSTRAINT PERSON_HID_PK PRIMARY KEY(HID)
)

CREATE TABLE USERCARD(
HID NUMBER(19,0) not null,
NUM VARCHAR2(255),
RID NUMBER(19,0),
CONSTRAINT USERCARD_HID_PK PRIMARY KEY(HID),
CONSTRAINT USERCARD_RID_FK FOREIGN KEY(RID) REFERENCES PERSON(HID)
)
SELECT * FROM PERSON;
SELECT * FROM USERCARD;
DROP TABLE USERCARD;
DROP TABLE PERSON;

---------- STUDENT -> STUDENTCARD ---------
DROP TABLE STUDENT;
DROP TABLE STUDENTCARD;
CREATE TABLE STUDENTCARD(
HID NUMBER(19,0) CONSTRAINT STUDENTCARD_HID_NN NOT NULL,
NUM VARCHAR2(255),
CONSTRAINT STUDENTCARD_HID_PK PRIMARY KEY(HID)
)
CREATE TABLE STUDENT(
HID NUMBER(19,0) CONSTRAINT STUDENT_HID_NN NOT NULL,
NAME VARCHAR2(255),
STUDENTCARD_HID NUMBER(19,0),
CONSTRAINT STUDENT_HID_PK PRIMARY KEY(HID),
CONSTRAINT STUDENT_STUDENTCARD_FK FOREIGN KEY(STUDENTCARD_HID) REFERENCES STUDENTCARD(HID)
)
CREATE TABLE TEACHER(
HID NUMBER(19,0) CONSTRAINT TEACHER_HID_NN NOT NULL,
NAME VARCHAR2(255),
CONSTRAINT TEACHER_HID_PK PRIMARY KEY(HID)
)
CREATE TABLE STUDENT_TO_TEACHER(
STUDENT_HID NUMBER(19,0),
TEACHER_HID NUMBER(19,0),
CONSTRAINT STT_TEACHERHID_U UNIQUE(TEACHER_HID),
CONSTRAINT STT_STUDENTHID_FK FOREIGN KEY(STUDENT_HID) REFERENCES STUDENT(HID),
CONSTRAINT STT_TEACHERHID_FK FOREIGN KEY(TEACHER_HID) REFERENCES TEACHER(HID)
)

SELECT * FROM STUDENTCARD;
SELECT * FROM STUDENT;
SELECT * FROM TEACHER;
SELECT * FROM STUDENT_TO_TEACHER;

INSERT INTO STUDENTCARD VALUES(1, '1000');
INSERT INTO STUDENT VALUES(1, 'kylin' , 1);
INSERT INTO TEACHER VALUES(1, 'teacher 1');
INSERT INTO TEACHER VALUES(2, 'teacher 2');
INSERT INTO STUDENT_TO_TEACHER VALUES(1, 1);
INSERT INTO STUDENT_TO_TEACHER VALUES(1, 2);

SELECT STUDENT.STUDENTCARD_HID FROM STUDENT WHERE STUDENT.HID = 1
SELECT STUDENT_TO_TEACHER.TEACHER_HID FROM STUDENT_TO_TEACHER WHERE STUDENT_TO_TEACHER.STUDENT_HID = 1
DELETE FROM STUDENT WHERE STUDENT.HID = 1
DELETE FROM STUDENTCARD WHERE STUDENTCARD.HID = 1

INSERT INTO STUDENT VALUES(2, 'kylin' , 1);
INSERT INTO STUDENT VALUES(3, 'kylin' , 1);
INSERT INTO STUDENT VALUES(4, 'kylin' , 1);

DELETE FROM STUDENT WHERE STUDENT.HID = 2 ;
DELETE FROM STUDENT WHERE STUDENT.HID = 3 ;
DELETE FROM STUDENT WHERE STUDENT.HID = 4 ;
DELETE FROM STUDENTCARD WHERE STUDENTCARD.HID = 1 ;

SELECT * FROM USER_CONSTRAINTS WHERE (TABLE_NAME = 'STUDENT' OR TABLE_NAME = 'STUDENTCARD' OR TABLE_NAME = 'TEACHER' OR TABLE_NAME = 'STUDENT_TO_TEACHER');

SELECT STUDENTCARD.NUM FROM STUDENTCARD

SELECT * FROM FUCK;

CREATE TABLE MIGRATIONPROCLOG(
HID NUMBER(19,0) NOT NULL, 
ROW_NUM NUMBER(19,0),
MIG_TYPE NUMBER(2,0),
MIG_KRY VARCHAR2(100),
CONSTRAINT MIGRATIONPROCLOG_HID_PK PRIMARY KEY(HID)
);

DROP TABLE MIGRATIONPROCLOG;
CREATE TABLE MIGRATIONPROCLOG(HID NUMBER(19,0) NOT NULL,ROW_NUM NUMBER(19,0),MIG_TYPE NUMBER(2,0),MIG_KRY VARCHAR2(100),CONSTRAINT MIGRATIONPROCLOG_HID_PK PRIMARY KEY(HID));

SELECT USER_TABLES.TABLE_NAME FROM USER_TABLES;



-------------------------------------------------------------------------------------------------------------------
-- 11 check
--		only can be defined column-based
-------------------------------------------------------------------------------------------------------------------
create table home_test(
id number(5),
name varchar2(25) check(length(name) >= 4 and length(name) <= 10),
age number(3) check(age >= 0 and age <= 150),
constraint home_test_pk primary key(id)
)
select * from user_constraints where table_name='HOME_TEST'
select * from user_cons_columns where table_name='HOME_TEST'
insert into home_test values(1, 'as', 151);
insert into home_test values(1, 'kylin', 122);

----------------------------------------------------------------------------------------------------------------------
-- IPC-Util bug recover
----------------------------------------------------------------------------------------------------------------------
SELECT * FROM EXECUTIONPLAN;
SELECT * FROM COMPONENT;


----------------------------------------------------------------------------------------------------------------------
-- ORA-01591 lock held by in-doubt distributed transaction
----------------------------------------------------------------------------------------------------------------------
CREATE TABLE HOMETEST(
HID NUMBER(19,0) CONSTRAINT HOMETEST_HID_NN NOT NULL,
NAME VARCHAR2(255),
CONSTRAINT HOMETEST_HID_PK PRIMARY KEY(HID)
)

SELECT * FROM HOMETEST WHERE HOMETEST.HID = 1 ;
INSERT INTO HOMETEST VALUES(1, '10000') ;
DELETE FROM HOMETEST WHERE HOMETEST.HID = 1 ;
UPDATE HOMETEST SET HOMETEST.NAME = 'kylinsoong' WHERE HOMETEST.HID = 1 ;



SELECT * FROM DBA_2PC_PENDING;
DELETE FROM DBA_2PC_PENDING;

SELECT * FROM MOCLASSIFICATIONVALUE
INSERT INTO MOCLASSIFICATIONVALUE VALUES(?,?,?,?,?)
SELECT * FROM MDCLASSVALUETYPE
INSERT INTO MDCLASSVALUETYPE VALUES(?,?,?,?,?,?)
SELECT * FROM CLASSIFICATION
INSERT INTO CLASSIFICATION VALUES(?,?,?,?,?,?,?)
SELECT * FROM CLASSIFICATIONGROUP
INSERT INTO CLASSIFICATIONGROUP VALUES(?,?,?,?)
moclassificationvalue
mdclassvaluetype
classification
classificationgroup

create table stylesheet (
  stylesheet_name varchar2(100) primary key not null,
  stylesheet_text CLOB
);

drop table stylesheet;

CREATE OR REPLACE DIRECTORY 
  XSLT_LOB_DIR
  AS
  'C:/Program Files/ipc113/iProcessConductor/oracle/iProcessConductor/xslt'
/

DECLARE
  dest_clob   CLOB;
  src_bfile    BFILE  := BFILENAME('XSLT_LOB_DIR', 'MSProject2Plan.xslt');
BEGIN
  insert into stylesheet(stylesheet_name, stylesheet_text) values('MSProject2Plan', empty_clob()) returning stylesheet_text into dest_clob;
  DBMS_LOB.fileopen(src_bfile);
  DBMS_LOB.loadfromfile(dest_clob, src_bfile, DBMS_LOB.getlength(src_bfile));
  DBMS_LOB.fileclose(src_bfile);
  commit;
END;
/  
 
delete from
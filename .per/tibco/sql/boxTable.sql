-----------------------------------------------
-- Export file for user SWPRO_WY             --
-- Created by wangyu on 2011-08-31, 15:26:42 --
-----------------------------------------------

spool boxTable.log

prompt
prompt Creating table BGMBOXTABLE1
prompt ===========================
prompt
begin
  sys.dbms_aqadm.create_queue_table(
    queue_table => 'SWPRO_WY.BGMBOXTABLE1',
    queue_payload_type => 'SWPRO_WY.SWLOCALMSG',
    sort_list => 'ENQ_TIME',
    compatible => '8.1.3',
    primary_instance => 0,
    secondary_instance => 0,
    comment => 'default background mbox',
    storage_clause => 'tablespace STAFFWAR pctfree 10 pctused 40 initrans 1 maxtrans 255 storage ( initial 64K minextents 1 maxextents unlimited )');
end;
/

prompt
prompt Creating table BGMBOXTABLE2
prompt ===========================
prompt
begin
  sys.dbms_aqadm.create_queue_table(
    queue_table => 'SWPRO_WY.BGMBOXTABLE2',
    queue_payload_type => 'SWPRO_WY.SWLOCALMSG',
    sort_list => 'ENQ_TIME',
    compatible => '8.1.3',
    primary_instance => 0,
    secondary_instance => 0,
    comment => 'default background mbox',
    storage_clause => 'tablespace STAFFWAR pctfree 10 pctused 40 initrans 1 maxtrans 255 storage ( initial 64K minextents 1 maxextents unlimited )');
end;
/

prompt
prompt Creating table PREDICTMBOXTABLE1
prompt ================================
prompt
begin
  sys.dbms_aqadm.create_queue_table(
    queue_table => 'SWPRO_WY.PREDICTMBOXTABLE1',
    queue_payload_type => 'SWPRO_WY.SWLOCALMSG',
    sort_list => 'ENQ_TIME',
    compatible => '8.1.3',
    primary_instance => 0,
    secondary_instance => 0,
    comment => 'default background prediction mbox',
    storage_clause => 'tablespace STAFFWAR pctfree 10 pctused 40 initrans 1 maxtrans 255 storage ( initial 64K minextents 1 maxextents unlimited )');
end;
/

prompt
prompt Creating table PREDICTMBOXTABLE2
prompt ================================
prompt
begin
  sys.dbms_aqadm.create_queue_table(
    queue_table => 'SWPRO_WY.PREDICTMBOXTABLE2',
    queue_payload_type => 'SWPRO_WY.SWLOCALMSG',
    sort_list => 'ENQ_TIME',
    compatible => '8.1.3',
    primary_instance => 0,
    secondary_instance => 0,
    comment => 'default background prediction mbox',
    storage_clause => 'tablespace STAFFWAR pctfree 10 pctused 40 initrans 1 maxtrans 255 storage ( initial 64K minextents 1 maxextents unlimited )');
end;
/

prompt
prompt Creating table WISMBOXTABLE1
prompt ============================
prompt
begin
  sys.dbms_aqadm.create_queue_table(
    queue_table => 'SWPRO_WY.WISMBOXTABLE1',
    queue_payload_type => 'SWPRO_WY.SWLOCALMSG',
    sort_list => 'ENQ_TIME',
    compatible => '8.1.3',
    primary_instance => 0,
    secondary_instance => 0,
    comment => 'default background mbox',
    storage_clause => 'tablespace STAFFWAR pctfree 10 pctused 40 initrans 1 maxtrans 255 storage ( initial 64K minextents 1 maxextents unlimited )');
end;
/

prompt
prompt Creating table WISMBOXTABLE2
prompt ============================
prompt
begin
  sys.dbms_aqadm.create_queue_table(
    queue_table => 'SWPRO_WY.WISMBOXTABLE2',
    queue_payload_type => 'SWPRO_WY.SWLOCALMSG',
    sort_list => 'ENQ_TIME',
    compatible => '8.1.3',
    primary_instance => 0,
    secondary_instance => 0,
    comment => 'default background mbox',
    storage_clause => 'tablespace STAFFWAR pctfree 10 pctused 40 initrans 1 maxtrans 255 storage ( initial 64K minextents 1 maxextents unlimited )');
end;
/


spool off

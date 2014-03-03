begin
  sys.dbms_aqadm.create_queue(
    queue_name => 'BGMBOXQUEUE1',
    queue_table => 'BGMBOXTABLE1',
    queue_type => sys.dbms_aqadm.normal_queue,
    max_retries => 12,
    retry_delay => 300,
    retention_time => 0);
end;
/

begin
  sys.dbms_aqadm.create_queue(
    queue_name => 'BGMBOXQUEUE2',
    queue_table => 'BGMBOXTABLE2',
    queue_type => sys.dbms_aqadm.normal_queue,
    max_retries => 12,
    retry_delay => 300,
    retention_time => 0);
end;
/

begin
  sys.dbms_aqadm.create_queue(
    queue_name => 'WISMBOXQUEUE1',
    queue_table => 'WISMBOXTABLE1',
    queue_type => sys.dbms_aqadm.normal_queue,
    max_retries => 12,
    retry_delay => 300,
    retention_time => 0);
end;
/

begin
  sys.dbms_aqadm.create_queue(
    queue_name => 'WISMBOXQUEUE2',
    queue_table => 'WISMBOXTABLE2',
    queue_type => sys.dbms_aqadm.normal_queue,
    max_retries => 12,
    retry_delay => 300,
    retention_time => 0);
end;
/

begin
  sys.dbms_aqadm.create_queue(
    queue_name => 'PREDICTMBOXQUEUE1',
    queue_table => 'PREDICTMBOXTABLE1',
    queue_type => sys.dbms_aqadm.normal_queue,
    max_retries => 12,
    retry_delay => 300,
    retention_time => 0);
end;
/

begin
  sys.dbms_aqadm.create_queue(
    queue_name => 'PREDICTMBOXQUEUE2',
    queue_table => 'PREDICTMBOXTABLE2',
    queue_type => sys.dbms_aqadm.normal_queue,
    max_retries => 12,
    retry_delay => 300,
    retention_time => 0);
end;
/
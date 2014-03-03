SELECT orch_id FROM (SELECT extractValue(EXECUTIONPLAN.DATA, '/executionPlan/primaryKey/id') plan_pk, extractValue(ORCHSUBJECT.DATA, '/orchSubject/uniqueId') orch_id FROM ORCHSUBJECT LEFT JOIN EXECUTIONPLAN ON substr(extractValue(ORCHSUBJECT.DATA, '/orchSubject/uniqueId'), 1, instr(extractValue(ORCHSUBJECT.DATA, '/orchSubject/uniqueId'), '|') - 1) = extractValue(EXECUTIONPLAN.DATA, '/executionPlan/primaryKey/id')) WHERE plan_pk is null;

DECLARE
  var_orchid varchar2(100) := '1000|21|Start';
BEGIN
  dbms_output.put_line(instr(var_orchid, '|'));
  dbms_output.put_line(substr(var_orchid, 1,1));
END;
/  


DECLARE
  var_orchid varchar2(100);
  CURSOR orch_cur IS SELECT orch_id FROM (SELECT extractValue(EXECUTIONPLAN.DATA, '/executionPlan/primaryKey/id') plan_pk, extractValue(ORCHSUBJECT.DATA, '/orchSubject/uniqueId') orch_id FROM ORCHSUBJECT LEFT JOIN EXECUTIONPLAN ON substr(extractValue(ORCHSUBJECT.DATA, '/orchSubject/uniqueId'), 1, instr(extractValue(ORCHSUBJECT.DATA, '/orchSubject/uniqueId'), '|') - 1) = extractValue(EXECUTIONPLAN.DATA, '/executionPlan/primaryKey/id')) WHERE plan_pk is null;
BEGIN
  IF NOT orch_cur%ISOPEN THEN
     OPEN orch_cur;
  END IF;
  
  LOOP
    FETCH orch_cur INTO var_orchid;
    EXIT WHEN orch_cur%NOTFOUND;
      DELETE FROM ORCHSUBJECT WHERE extractValue(ORCHSUBJECT.DATA, '/orchSubject/uniqueId') = var_orchid ;
    END LOOP;
  
  CLOSE orch_cur;    
END;
/  

--------- below is test -------------------------------------------
DECLARE
  var_orchid varchar2(100);
  CURSOR orch_cur IS SELECT extractValue(ORCHSUBJECT.DATA, '/orchSubject/uniqueId') orch_id FROM ORCHSUBJECT WHERE ROWNUM < 10;
BEGIN
  IF NOT orch_cur%ISOPEN THEN
     OPEN orch_cur;
  END IF;
  
  LOOP
    FETCH orch_cur INTO var_orchid;
    EXIT WHEN orch_cur%NOTFOUND;
      dbms_output.put_line(var_orchid);
    END LOOP;
  
  CLOSE orch_cur;
END;
/  
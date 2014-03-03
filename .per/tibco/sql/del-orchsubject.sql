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

DELETE FROM ORCHSUBJECT WHERE extractValue (data, 

SELECT extractValue(EXECUTIONPLAN.DATA, '/executionPlan/primaryKey/id') plan_pk from executionplan;
SELECT extractValue(ORCHSUBJECT.DATA, '/orchSubject/uniqueId') orch_pk from orchsubject;
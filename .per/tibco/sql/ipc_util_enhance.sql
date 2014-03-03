SELECT HEADER.PLANUNIQUEID, ORDER_.HID FROM ORDER_ INNER JOIN HEADER ON ORDER_.HEADER_HID = HEADER.HID INNER JOIN ORDERHEADER ON ORDERHEADER.HID = HEADER.ORDERHEADER_HID WHERE ORDERHEADER.ORDERREF = 'orderRef235199';
select count(*) from GEOGRAPHICADDRESSTYPE;;
select * from GEOGRAPHICADDRESSTYPE;
SELECT * FROM GEOGRAPHICADDRESSTYPE WHERE GEOGRAPHICADDRESSTYPE.HID = 4676028
DELETE FROM GEOGRAPHICADDRESSTYPE WHERE GEOGRAPHICADDRESSTYPE.HID = 4676028;

select count(*) from linetype;
select count(*) from orderline;
select count(0) from udftype;
select * from ADVISORYSTRINGTYPE;
select * from GEOGRAPHICADDRESSTYPE;

-------------------------------------------------------------------------------
select order_.header_hid, order_.request_hid from order_ where order_.hid = 935245;
select order_to_fulfilmentorder.fulfilmentorder_hid from order_to_fulfilmentorder where order_to_fulfilmentorder.order_hid = 935245
delete from order_to_fulfilmentorder where order_to_fulfilmentorder.order_hid = 935245;
select order_to_linetype.linetype_hid from order_to_linetype where order_to_linetype.order_hid = 935245;
delete from order_to_linetype where order_to_linetype.order_hid = 935245;

select linetype.orderline_hid from linetype where linetype.hid = 4676025;
delete from linetype where linetype.hid = 4676025;
select orderline.deliveryaddress_hid from orderline where orderline.hid = 14027985;
select orderline_to_udftype.udftype_hid from orderline_to_udftype where orderline_to_udftype.orderline_hid = 14027985;
delete from orderline_to_udftype where orderline_to_udftype.orderline_hid = 14027985;
select * from orderheader_to_udftype where orderheader_to_udftype.udftype_hid = 14963332;
delete from udftype where udftype.hid = 14963332;
select * from orderheader_to_udftype where orderheader_to_udftype.udftype_hid = 14963333;
delete from udftype where udftype.hid = 14963333;
select * from orderheader_to_udftype where orderheader_to_udftype.udftype_hid = 14963334;
delete from udftype where udftype.hid = 14963334;
select * from orderheader_to_udftype where orderheader_to_udftype.udftype_hid = 14963335;
delete from udftype where udftype.hid = 14963335;
select orderline_to_slatype.slatype_hid from orderline_to_slatype where orderline_to_slatype.orderline_hid = 14027985;
delete from orderline_to_slatype where orderline_to_slatype.orderline_hid = 14027985;
select orderline_to_ctype.characteristictype_hid from orderline_to_ctype where orderline_to_ctype.orderline_hid = 14027985;
delete from orderline_to_ctype where orderline_to_ctype.orderline_hid = 14027985;
delete from forder_to_orderline whre forder_to_orderline.orderline_hid = 14027985;
delete from orderline where orderline.hid = 14027985;

select linetype.orderline_hid from linetype where linetype.hid = 4676026;
delete from linetype where linetype.hid = 4676026;
select orderline.deliveryaddress_hid from orderline where orderline.hid = 14027986;
select orderline_to_udftype.udftype_hid from orderline_to_udftype where orderline_to_udftype.orderline_hid = 14027986;
delete from orderline_to_udftype where orderline_to_udftype.orderline_hid = 14027986;
select orderline_to_slatype.slatype_hid from orderline_to_slatype where orderline_to_slatype.orderline_hid = 14027986;
delete from orderline_to_slatype where orderline_to_slatype.orderline_hid = 14027986;
select orderline_to_ctype.characteristictype_hid from orderline_to_ctype where orderline_to_ctype.orderline_hid = 14027986;
delete from orderline_to_ctype where orderline_to_ctype.orderline_hid = 14027986;
delete from forder_to_orderline whre forder_to_orderline.orderline_hid = 14027986;
delete from orderline where orderline.hid = 14027986;

select linetype.orderline_hid from linetype where linetype.hid = 4676027;
delete from linetype where linetype.hid = 4676027;
select orderline.deliveryaddress_hid from orderline where orderline.hid = 14027987;
select orderline_to_udftype.udftype_hid from orderline_to_udftype where orderline_to_udftype.orderline_hid = 14027987;
delete from orderline_to_udftype where orderline_to_udftype.orderline_hid = 14027987;
select orderline_to_slatype.slatype_hid from orderline_to_slatype where orderline_to_slatype.orderline_hid = 14027987;
delete from orderline_to_slatype where orderline_to_slatype.orderline_hid = 14027987;
select orderline_to_ctype.characteristictype_hid from orderline_to_ctype where orderline_to_ctype.orderline_hid = 14027987;
delete from orderline_to_ctype where orderline_to_ctype.orderline_hid = 14027987;
delete from forder_to_orderline whre forder_to_orderline.orderline_hid = 14027987;
delete from orderline where orderline.hid = 14027987;

select linetype.orderline_hid from linetype where linetype.hid = 4676028;
delete from linetype where linetype.hid = 4676028;
select orderline.deliveryaddress_hid from orderline where orderline.hid = 14027988;
select orderline_to_udftype.udftype_hid from orderline_to_udftype where orderline_to_udftype.orderline_hid = 14027988;
delete from orderline_to_udftype where orderline_to_udftype.orderline_hid = 14027988;
select orderline_to_slatype.slatype_hid from orderline_to_slatype where orderline_to_slatype.orderline_hid = 14027988;
delete from orderline_to_slatype where orderline_to_slatype.orderline_hid = 14027988;
select orderline_to_ctype.characteristictype_hid from orderline_to_ctype where orderline_to_ctype.orderline_hid = 14027988;
delete from orderline_to_ctype where orderline_to_ctype.orderline_hid = 14027988;
delete from forder_to_orderline whre forder_to_orderline.orderline_hid = 14027988;
delete from orderline where orderline.hid = 14027988;

select linetype.orderline_hid from linetype where linetype.hid = 4676029;
delete from linetype where linetype.hid = 4676029;
select orderline.deliveryaddress_hid from orderline where orderline.hid = 14027989;
select orderline_to_udftype.udftype_hid from orderline_to_udftype where orderline_to_udftype.orderline_hid = 14027989;
delete from orderline_to_udftype where orderline_to_udftype.orderline_hid = 14027989;
select orderline_to_slatype.slatype_hid from orderline_to_slatype where orderline_to_slatype.orderline_hid = 14027989;
delete from orderline_to_slatype where orderline_to_slatype.orderline_hid = 14027989;
select orderline_to_ctype.characteristictype_hid from orderline_to_ctype where orderline_to_ctype.orderline_hid = 14027989;
delete from orderline_to_ctype where orderline_to_ctype.orderline_hid = 14027989;
delete from forder_to_orderline whre forder_to_orderline.orderline_hid = 14027989;
delete from orderline where orderline.hid = 14027989;

select fulfilmentorder.orderheader_hid, fulfilmentorder.fulfilmentproc_hid from fulfilmentorder where fulfilmentorder.hid = 1870441;
select forder_to_orderline.orderline_hid from forder_to_orderline where forder_to_orderline.fulfilmentorder_hid = 1870441;
delete from forder_to_orderline where forder_to_orderline.fulfilmentorder_hid = 1870441;
delete from advisorystringtype where advisorystringtype.fulfilmentorder_hid = 1870441;     

delete from order_ where order_.hid = 935245;

SELECT ORDER_.HID FROM ORDER_ INNER JOIN HEADER ON ORDER_.HEADER_HID = HEADER.HID INNER JOIN ORDERHEADER ON HEADER.ORDERHEADER_HID = ORDERHEADER.HID WHERE ORDERHEADER.ORDERREF = 'orderRef935195'

SELECT ORDERHEADER.DELIVERYADDRESS_HID, ORDERHEADER.INVOICEADDRESS_HID, ORDERHEADER.ORDERREF FROM ORDERHEADER WHERE ORDERHEADER.HID = 1000
SELECT * FROM HEADER;
SELECT * FROM EXECUTIONPLAN;
SELECT HEADER.ORDERHEADER_HID, HEADER.PLANUNIQUEID FROM HEADER
SELECT EXECUTIONPLAN.HID FROM EXECUTIONPLAN WHERE EXECUTIONPLAN.UNIQUEID = 'ORCH-IT3EPTEMP01-2355'
SELECT * FROM ORDERHEADER ORDER BY HID DESC
SELECT Count(*) from Order_

drop index forder_to_orderline_index;
drop index fsystemtype_property_index;


select * from user_indexes where index_name = 'order_to_fulfilmentorder';

select count(*) from order_to_fulfilmentorder;
select count(*) from order_to_linetype;
select count(*) from forder_to_orderline;
select count(*) from fsystemtype_property;
select count(*) from fulfilmentproc_field;
select count(*) from ORDERHEADER_TO_SLATYPE;
select count(*) from ORDERLINE_TO_CTYPE;
select count(*) from ORDERLINE_TO_SLATYPE;
select count(*) from CTYPE_TO_CVALUETYPE;
select count(*) from ORDERLINE_TO_UDFTYPE;


drop index order_to_fulfilmentorder_index;
drop index order_to_linetype_index;
drop index fulfilmentproc_field_index;
drop index ctype_to_cvaluetype_index;

create index order_to_fulfilmentorder_index on order_to_fulfilmentorder(order_hid,fulfilmentorder_hid);
create index order_to_linetype_index on order_to_linetype(order_hid,linetype_hid);
create index forder_to_orderline_index on forder_to_orderline(fulfilmentorder_hid,orderline_hid);
create index fsystemtype_property_index on fsystemtype_property(fulfilmentsystemtype_hid,property_hid);
create index orderheader_to_slatype_index on orderheader_to_slatype(orderheader_hid,slatype_hid);
create index orderheader_to_udftype_index on orderheader_to_udftype(orderheader_hid,udftype_hid);
create index orderline_to_ctype_index on orderline_to_ctype(orderline_hid,characteristictype_hid);
create index orderline_to_slatype_index on orderline_to_slatype(orderline_hid,slatype_hid);
create index orderline_to_udftype_index on orderline_to_udftype(orderline_hid,udftype_hid);
create index fulfilmentproc_field_index on fulfilmentproc_field(fulfilmentproc_hid,field_hid);
create index ctype_to_cvaluetype_index on ctype_to_cvaluetype(characteristictype_hid,characteristicvaluetype_hid);

DELETE FROM ORDER_ WHERE ORDER_.HID = ?
select * from order_to_fulfilmentorder;
DELETE FROM ORDER_TO_FULFILMENTORDER WHERE ORDER_TO_FULFILMENTORDER.ORDER_HID = ?
select * from Order_To_Linetype;
DELETE FROM ORDER_TO_LINETYPE WHERE ORDER_TO_LINETYPE.ORDER_HID = ?
select * from FULFILMENTORDER;
DELETE FROM FULFILMENTORDER WHERE FULFILMENTORDER.HID = ?
DELETE FROM HEADER WHERE HEADER.HID = ?
DELETE FROM ORDERHEADER WHERE ORDERHEADER.HID = ?
DELETE FROM ORDERHEADER_TO_SLATYPE WHERE ORDERHEADER_TO_SLATYPE.ORDERHEADER_HID = ?
DELETE FROM ORDERHEADER_TO_UDFTYPE WHERE ORDERHEADER_TO_UDFTYPE.ORDERHEADER_HID = ?
select * from geographicaddresstype;
DELETE FROM GEOGRAPHICADDRESSTYPE WHERE GEOGRAPHICADDRESSTYPE.HID = ?
DELETE FROM FULFILMENTPROC WHERE FULFILMENTPROC.HID = ?
DELETE FROM FULFILMENTSYSTEMTYPE WHERE FULFILMENTSYSTEMTYPE.HID = ?
DELETE FROM FSYSTEMTYPE_PROPERTY WHERE FSYSTEMTYPE_PROPERTY.FULFILMENTSYSTEMTYPE_HID = ?
DELETE FROM PROPERTY WHERE PROPERTY.HID = ?
DELETE FROM FULFILMENTPROC_FIELD WHERE FULFILMENTPROC_FIELD.FULFILMENTPROC_HID = ?
DELETE FROM FIELD WHERE FIELD.HID = ?
DELETE FROM UDFTYPE WHERE UDFTYPE.HID = ?
DELETE FROM SLATYPE WHERE SLATYPE.HID = ?
select * from advisorystringtype;
DELETE FROM ADVISORYSTRINGTYPE WHERE ADVISORYSTRINGTYPE.FULFILMENTORDER_HID = ?
DELETE FROM FORDER_TO_ORDERLINE WHERE FORDER_TO_ORDERLINE.FULFILMENTORDER_HID = ?
DELETE FROM LINETYPE WHERE LINETYPE.HID = ?
DELETE FROM ORDERLINE WHERE ORDERLINE.HID = ?
DELETE FROM ORDERLINE_TO_UDFTYPE WHERE ORDERLINE_TO_UDFTYPE.ORDERLINE_HID = ?
DELETE FROM ORDERLINE_TO_SLATYPE WHERE ORDERLINE_TO_SLATYPE.ORDERLINE_HID = ?
DELETE FROM ORDERLINE_TO_CTYPE WHERE ORDERLINE_TO_CTYPE.ORDERLINE_HID = ?
DELETE FROM CHARACTERISTICTYPE WHERE CHARACTERISTICTYPE.HID = ?
DELETE FROM CTYPE_TO_CVALUETYPE WHERE CTYPE_TO_CVALUETYPE.CHARACTERISTICTYPE_HID = ?
DELETE FROM CHARACTERISTICVALUETYPE WHERE CHARACTERISTICVALUETYPE.HID = ?
select count(*) from orderline;
select count(*) from linetype;
select * from forder_to_orderline where forder_to_orderline.fulfilmentorder_hid = 2000048 or forder_to_orderline.fulfilmentorder_hid = 2000049 ;
select * from order_ where order_.hid = 1000049;
select * from order_to_fulfilmentorder where order_to_fulfilmentorder.order_hid = 1000049;
select * from forder_to_orderline where forder_to_orderline.orderline_hid = 1000049;
select * from order_ where order_.header_hid = 666716;
select * from linetype where linetype.hid = 5000045;
select * from order_to_linetype where order_to_linetype.order_hid = 1000049;
select * from linetype where linetype.hid = 5000049;
---------------------------------------------------------------------------------------------------------
select count(*) from GEOGRAPHICADDRESSTYPE;
select * from GEOGRAPHICADDRESSTYPE;
select count(*) from ORDERHEADER;
select * from ORDERHEADER;
select count(*) from header;
select * from header;
select count(*) from FULFILMENTSYSTEMTYPE;
select * from FULFILMENTSYSTEMTYPE;
select count(*) from FULFILMENTPROC;
select * from FULFILMENTPROC;
select count(*) from FULFILMENTORDER;
select * from FULFILMENTORDER;
select count(*) from ADVISORYSTRINGTYPE;
select * from ADVISORYSTRINGTYPE;
select count(*) from UDFTYPE;
select * from UDFTYPE;
select count(*) from SLATYPE;
select count(*) from PROPERTY;
select * from ORDERLINE;

-----------------------------------------------
select * from order_ where order_.hid = 1000047
select * from order_to_linetype where order_to_linetype.order_hid = 1000047;
delete from order_to_linetype where order_to_linetype.order_hid = 1000047;
select * from order_to_fulfilmentorder where order_to_fulfilmentorder.order_hid = 1000047;
select * from forder_to_orderline where forder_to_orderline.fulfilmentorder_hid = 2000045
select * from linetype where linetype.hid = 5000037
select * from forder_to_orderline where forder_to_orderline.orderline_hid = 15000017
delete from forder_to_orderline where forder_to_orderline.fulfilmentorder_hid = 2000045
select * from fulfilmentorder where fulfilmentorder.hid = 2000044;
delete from advisorystringtype where advisorystringtype.fulfilmentorder_hid = 2000045;
select * from header where header.hid = 1000047
delete from order_to_fulfilmentorder where order_to_fulfilmentorder.order_hid = 1000047
delete from order_ where order_.hid = 1000047;
delete from header where header.hid = 1000047
select * from orderheader where orderheader.hid = 3000041
select * from geographicaddresstype where geographicaddresstype.
select * from orderheader_to_udftype where orderheader_to_udftype.orderheader_hid = 3000043
select * from orderheader_to_slatype where orderheader_to_slatype.orderheader_hid = 3000041
delete from orderheader_to_slatype where orderheader_to_slatype.orderheader_hid = 3000042
select * from fulfilmentproc where fulfilmentproc.hid = 2000044;
select * from fulfilmentproc_field where fulfilmentproc_field.fulfilmentproc_hid = 2000045
select * from fulfilmentsystemtype where fulfilmentsystemtype.hid = 2000045;
select * from fsystemtype_property where fsystemtype_property.fulfilmentsystemtype_hid = 2000044;
delete from fsystemtype_property where fsystemtype_property.fulfilmentsystemtype_hid = 2000045
delete from fulfilmentorder where fulfilmentorder.hid = 2000044
delete from fulfilmentproc where fulfilmentproc.hid = 2000044
delete from fulfilmentsystemtype where fulfilmentsystemtype.hid = 2000045
select * from orderline where orderline.hid = 15000019;
select * from orderline_to_slatype where orderline_to_slatype.orderline_hid = 15000006 
delete from orderline_to_slatype where orderline_to_slatype.orderline_hid = 15000005
select * from orderline_to_udftype where orderline_to_udftype.orderline_hid = 15000015
delete from orderline_to_udftype where orderline_to_udftype.orderline_hid = 15000015
select * from orderline_to_ctype where orderline_to_ctype.orderline_hid = 15000019
delete from orderline_to_ctype where orderline_to_ctype.orderline_hid = 15000005

-------------------------------------------------------------------------------------------
DELETE FROM LINETYPE WHERE LINETYPE.HID = ?
SELECT COUNT(*) FROM LINETYPE;
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'LINETYPE';
SELECT * FROM USER_INDEXES WHERE TABLE_NAME = 'GEOGRAPHICADDRESSTYPE';
DELETE FROM ORDERHEADER WHERE ORDERHEADER.HID = ?
DELETE FROM GEOGRAPHICADDRESSTYPE WHERE GEOGRAPHICADDRESSTYPE.HID = 5000036
SELECT * FROM GEOGRAPHICADDRESSTYPE WHERE GEOGRAPHICADDRESSTYPE.HID = 5000037;
drop index SYS_C0015540;
create index SYS_C0015540 on GEOGRAPHICADDRESSTYPE(HID)

SELECT * FROM ORDERHEADER
SELECT * FROM ORDERLINE
create index INVOICEADDRESS_HID_INDEX on ORDERHEADER(INVOICEADDRESS_HID);
create index DELIVERYADDRESS_HID_INDEX on ORDERHEADER(DELIVERYADDRESS_HID);
create index DE_INDEX_ORDERLINE on ORDERLINE(DELIVERYADDRESS_HID);
drop index INVOICEADDRESS_HID_INDEX;
drop index DELIVERYADDRESS_HID_INDEX;
drop index DE_INDEX_ORDERLINE;

SELECT EXECUTIONPLAN.UNIQUEID FROM EXECUTIONPLAN WHERE EXECUTIONPLAN.HID = ?
SELECT MOCLASSIFICATIONVALUE.HID FROM MOCLASSIFICATIONVALUE WHERE MOCLASSIFICATIONVALUE.MANAGEDOBJECTREF = ?
SELECT * FROM EXECUTIONPLAN; 
SELECT * FROM PLAN_TO_UDFTYPE;
SELECT COUNT(*) FROM EXECUTIONPLANITEMTYPE;
SELECT * FROM PLAN_TO_UDFTYPE WHERE PLAN_TO_UDFTYPE.EXECUTIONPLAN_HID = ?
SELECT * FROM EXECUTIONPLANITEMTYPE WHERE 
SELECT * FROM ACTIONS;
select * from orchsubject
SELECT ORCHSUBJECT.HID FROM ORCHSUBJECT WHERE ORCHSUBJECT.UNIQUEID LIKE ?;
SELECT * FROM SUBJECT_OBSERVERS;
SELECT SUBJECT_TO_EXPDEPENDENCY.DEPENDENCY_HID FROM SUBJECT_TO_EXPDEPENDENCY WHERE SUBJECT_TO_EXPDEPENDENCY.ORCHSUBJECT_HID = ?
SELECT SUBJECT_TO_IMPDEPENDENCY.DEPENDENCY_HID FROM SUBJECT_TO_IMPDEPENDENCY WHERE SUBJECT_TO_IMPDEPENDENCY.ORCHSUBJECT_HID = ?
SELECT SUBJECTDEF_TO_PROPERTY.PROPERTY_HID FROM SUBJECTDEF_TO_PROPERTY WHERE SUBJECTDEF_TO_PROPERTY.SUBJECTDEF_HID = ?
SELECT * FROM EXECUTIONPLANITEMTYPE;
SELECT * FROM XREFTYPE;
SELECT * FROM ORDERLINEIDS;
SELECT ITEMS_TO_ITEMS.CHILD_HID FROM ITEMS_TO_ITEMS WHETE ITEMS_TO_ITEMS.PARENT_HID = ?
SELECT * FROM RESOURCETYPE;
SELECT * FROM COMPONENTUSERS;
SELECT COMPONENT.UNIQUEID FROM COMPONENT WHERE COMPONENT.HID = ?;
SELECT * FROM PROCESS
SELECT OBJECTTYPE.ID FROM OBJECTTYPE WHERE OBJECTTYPE.HID = ?;
SELECT PROCESS.HID, PROCESS.PROCESSVERSION_HID FROM PROCESS WHERE PROCESS.MANAGEDENTITYPK_ID = ?
alter table RESOURCEBUNDLEPARAMS add constraint RBPARAMS_TO_AUDITITEM_FK foreign key (AUDITITEM_HID) references AUDITITEM;
alter table AUDITITEM add constraint AUDITITEM_TO_PARENT_FK foreign key (PARENT_HID) references AUDITITEM;
SELECT * FROM AUDITITEM WHERE AUDITITEM.HASCHILD = '1' ;
delete from audititem
select * from resourcebundleparams;
delete from resourcebundleparams;
select * from audititem where audititem.haschild = '1';
select count(*) from executionplan;
SELECT * FROM AUDITITEM WHERE AUDITITEM.KEY = 'PROC2';
SELECT * FROM AUDITITEM WHERE AUDITITEM.KEY = 'ep1';
SELECT * FROM AUDITITEM WHERE AUDITITEM.KEY = 'order001';

executionplan
executionplanitemtype
items_to_items
processversion
processversion_to_milestone
processversion_to_section
xreftype
orderlineids
scheduleableitem
resourcetype
pointtype
processsectiontype
milestonetype
milestonetype_field
milestonetype_property
plan_to_udftype
plan_to_dependency
dependency
starttimedependencytype
planitemdependencytype
externaldependencytype
jeopardyinfotype
jeopardyinfotype_to_jeopardy
processjeopardytype
jeopardysupertype
jeopardysupertype_to_def
jeopardydeftype
actions
component
component_to_objecttype
componentgroups
componentusers
objecttype
process
audititem
resourcebundleparams
orchsubject
subject_observers
subject_to_expdependency
subject_to_impdependency
subjectdef_to_property
dependencytype
DELETE FROM EXECUTIONPLAN WHERE EXECUTIONPLAN.HID = ?
DELETE FROM EXECUTIONPLANITEMTYPE WHERE EXECUTIONPLANITEMTYPE.HID = ?
DELETE FROM ITEMS_TO_ITEMS WHERE ITEMS_TO_ITEMS.PARENT_HID = ?12313131;
SELECT * FROM ITEMS_TO_ITEMS;
DELETE FROM PROCESSVERSION WHERE PROCESSVERSION.HID = ?
DELETE FROM PROCESSVERSION_TO_MILESTONE WHERE PROCESSVERSION_TO_MILESTONE.PROCESSVERSION_HID = ?
DELETE FROM PROCESSVERSION_TO_SECTION WHERE PROCESSVERSION_TO_SECTION.PROCESSVERSION_HID = ?
select * from xreftype
DELETE FROM XREFTYPE WHERE XREFTYPE.TASK_HID = ?
select * from orderlineids
DELETE FROM ORDERLINEIDS WHERE ORDERLINEIDS.EXECUTIONPLANITEMTYPE_HID = ?
select * from scheduleableitem
DELETE FROM SCHEDULEABLEITEM WHERE SCHEDULEABLEITEM.HID = ?
select * from resourcetype;
select * from pointtype;
DELETE FROM POINTTYPE WHERE POINTTYPE.HID = ?
select * from processsectiontype;
DELETE FROM PROCESSSECTIONTYPE WHERE PROCESSSECTIONTYPE.HID = ?
DELETE FROM MILESTONETYPE WHERE MILESTONETYPE.HID = ?
DELETE FROM MILESTONETYPE_FIELD WHERE MILESTONETYPE_FIELD.MILESTONETYPE_HID = ?
DELETE FROM MILESTONETYPE_PROPERTY WHERE MILESTONETYPE_PROPERTY.MILESTONETYPE_HID = ?
DELETE FROM PLAN_TO_UDFTYPE WHERE PLAN_TO_UDFTYPE.EXECUTIONPLAN_HID = ?
DELETE FROM PLAN_TO_DEPENDENCY WHERE PLAN_TO_DEPENDENCY.EXECUTIONPLAN_HID = ?
DELETE FROM DEPENDENCY WHERE DEPENDENCY.HID = ?
DELETE FROM STARTTIMEDEPENDENCYTYPE WHERE STARTTIMEDEPENDENCYTYPE.HID = ?
DELETE FROM PLANITEMDEPENDENCYTYPE WHERE PLANITEMDEPENDENCYTYPE.HID = ?
DELETE FROM EXTERNALDEPENDENCYTYPE WHERE EXTERNALDEPENDENCYTYPE.HID = ?
DELETE FROM JEOPARDYINFOTYPE WHERE JEOPARDYINFOTYPE.HID = ?
DELETE FROM JEOPARDYINFOTYPE_TO_JEOPARDY WHERE JEOPARDYINFOTYPE_TO_JEOPARDY.JEOPARDYINFOTYPE_HID = ?  
DELETE FROM PROCESSJEOPARDYTYPE WHERE PROCESSJEOPARDYTYPE.HID = ?
DELETE FROM JEOPARDYSUPERTYPE WHERE JEOPARDYSUPERTYPE.HID = ?
DELETE FROM JEOPARDYSUPERTYPE_TO_DEF WHERE JEOPARDYSUPERTYPE_TO_DEF.JEOPARDYSUPERTYPE_HID = ?
DELETE FROM JEOPARDYDEFTYPE WHERE JEOPARDYDEFTYPE.HID = ?
select * from actions;
DELETE FROM ACTIONS WHERE ACTIONS.JEOPARDYDEFTYPE_HID = ?
DELETE FROM COMPONENT WHERE COMPONENT.HID = ?
DELETE FROM COMPONENT_TO_OBJECTTYPE WHERE COMPONENT_TO_OBJECTTYPE.COMPONENT_HID = ?
SELECT * FROM COMPONENTGROUPS;
DELETE FROM COMPONENTGROUPS WHERE COMPONENTGROUPS.COMPONENT_HID = ?
DELETE FROM COMPONENTUSERS WHERE COMPONENTUSERS.COMPONENT_HID = ?
DELETE FROM OBJECTTYPE WHERE OBJECTTYPE.HID = ?
DELETE FROM PROCESS WHERE PROCESS.HID = ?
DELETE FROM AUDITITEM WHERE AUDITITEM.HID = ?
DELETE FROM RESOURCEBUNDLEPARAMS WHERE RESOURCEBUNDLEPARAMS.AUDITITEM_HID = ?
DELETE FROM ORCHSUBJECT WHERE ORCHSUBJECT.HID = ?
select * from subject_observers;
DELETE FROM SUBJECT_OBSERVERS WHERE SUBJECT_OBSERVERS.SUBJECT_HID = ?
DELETE FROM SUBJECT_TO_EXPDEPENDENCY WHERE SUBJECT_TO_EXPDEPENDENCY.ORCHSUBJECT_HID = ?
DELETE FROM SUBJECT_TO_IMPDEPENDENCY WHERE SUBJECT_TO_IMPDEPENDENCY.ORCHSUBJECT_HID = ?
DELETE FROM SUBJECTDEF_TO_PROPERTY WHERE SUBJECTDEF_TO_PROPERTY.SUBJECTDEF_HID = ?
DELETE FROM DEPENDENCYTYPE WHERE DEPENDENCYTYPE.HID = ?
select * from process;
select * from processversion;
select * from milestonetype;
select * from pointtype;
select * from dependency;
select * from starttimedependencytype;
select * from processsectiontype;
select * from processjeopardytype;
select * from externaldependencytype
select * from resourcetype;
DELETE FROM MOCLASSIFICATIONVALUE WHERE MOCLASSIFICATIONVALUE.HID = ?
moclassificationvalue
DELETE FROM UDFTYPE WHERE UDFTYPE.PLANITEM_HID = ?
select * from executionplanitemtype;
SELECT * FROM ITEMS_TO_ITEMS;
SELECT ITEMS_TO_ITEMS.CHILD_HID FROM ITEMS_TO_ITEMS WHERE ITEMS_TO_ITEMS.PARENT_HID = 1
SELECT ITEMS_TO_ITEMS.CHILD_HID FROM ITEMS_TO_ITEMS WHETE ITEMS_TO_ITEMS.PARENT_HID =
select * from processsectiontype;
select * from audititem;
select * from resourcebundleparams
delete from resourcebundleparams;
delete from audititem;
-----------------------------------------------------------------------------------
-- Dec 12, 2011
-----------------------------------------------------------------------------------
select * from audititem;
select * from resourcebundleparams;
select * from audititem where audititem.key = 'order001'
select * from audititem where audititem.parent_hid = 53
select * from audititem where audititem.key = 'ep1-506'
select * from audititem where audititem.key = 'PROC2'
select * from audititem where audititem.parent_hid = 58
SELECT AUDITITEM.HID, AUDITITEM.HASCHILD FROM AUDITITEM WHERE AUDITITEM.KEY = ?  
SELECT AUDITITEM.HID, AUDITITEM.HASCHILD FROM AUDITITEM WHERE AUDITITEM.PARENT_HID
select * from resourcebundleparams;
select * from audititem;
select * from component;
select * from executionplan;
select * from order_;
select * from component;
delete from resourcebundleparams;
delete from audititem;
select * from executionplan;
SELECT EXECUTIONPLAN.HID FROM EXECUTIONPLAN WHERE (EXECUTIONPLAN.UNIQUEID LIKE '%') AND (EXECUTIONPLAN.STATUSCHANGED < to_date('2012-12-14 07:31:00', 'yyyy-mm-dd hh24:mi:ss'));
select * from audititem;
select * from resourcebundleparams;
select * from executionplan order by hid desc
select * from executionplan where executionplan.uniqueid like 'EP_Talk500MobileSs4045%'
select count(*) from executionplan where executionplan.uniqueid like 'EP_Talk500MobileSs%';
select * from SCHEDULEABLEITEM;
select count(*) from executionplan;
select count(*) from order_;


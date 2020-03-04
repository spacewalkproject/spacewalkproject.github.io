-- created by Oraschemadoc Wed Mar  4 07:58:06 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE INDEX "SPACEUSER"."RHN_SRV_NET_ADDR4_IID_ADDR_IDX" ON "SPACEUSER"."RHNSERVERNETADDRESS4" ("INTERFACE_ID", "ADDRESS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
/

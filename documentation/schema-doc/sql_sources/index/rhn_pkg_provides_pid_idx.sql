-- created by Oraschemadoc Wed Mar  4 07:58:01 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE INDEX "SPACEUSER"."RHN_PKG_PROVIDES_PID_IDX" ON "SPACEUSER"."RHNPACKAGEPROVIDES" ("PACKAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
/

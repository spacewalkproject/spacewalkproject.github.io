-- created by Oraschemadoc Wed Mar  4 07:57:47 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNVISIBLEOBJECTS" 
   (	"PXT_SESSION_ID" NUMBER NOT NULL ENABLE, 
	"OBJECT_ID" NUMBER NOT NULL ENABLE, 
	"OBJECT_TYPE" VARCHAR2(40) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_VIS_OBJS_SESS_FK" FOREIGN KEY ("PXT_SESSION_ID")
	  REFERENCES "SPACEUSER"."PXTSESSIONS" ("ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

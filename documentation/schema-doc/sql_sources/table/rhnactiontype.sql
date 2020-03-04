-- created by Oraschemadoc Wed Mar  4 07:57:24 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONTYPE" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"LABEL" VARCHAR2(48) NOT NULL ENABLE, 
	"NAME" VARCHAR2(100) NOT NULL ENABLE, 
	"TRIGGER_SNAPSHOT" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"UNLOCKED_ONLY" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ACTION_TYPE_TRIGSNAP_CK" CHECK (trigger_snapshot in ('Y','N')) ENABLE, 
	 CONSTRAINT "RHN_ACTION_TYPE_UNLCK_CK" CHECK (unlocked_only in ('Y','N')) ENABLE, 
	 CONSTRAINT "RHN_ACTION_TYPE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

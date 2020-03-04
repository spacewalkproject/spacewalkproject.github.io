-- created by Oraschemadoc Wed Mar  4 07:57:45 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNUSEREXTGROUPMAPPING" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"EXT_GROUP_ID" NUMBER NOT NULL ENABLE, 
	"INT_GROUP_TYPE_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_USEREXTGROUPMAP_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_USEREXTGROUPMAP_E_FK" FOREIGN KEY ("EXT_GROUP_ID")
	  REFERENCES "SPACEUSER"."RHNUSEREXTGROUP" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_USEREXTGROUPMAP_I_FK" FOREIGN KEY ("INT_GROUP_TYPE_ID")
	  REFERENCES "SPACEUSER"."RHNUSERGROUPTYPE" ("ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

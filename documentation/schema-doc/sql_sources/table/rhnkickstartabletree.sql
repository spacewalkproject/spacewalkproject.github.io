-- created by Oraschemadoc Wed Mar  4 07:57:32 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNKICKSTARTABLETREE" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"ORG_ID" NUMBER, 
	"LABEL" VARCHAR2(64) NOT NULL ENABLE, 
	"BASE_PATH" VARCHAR2(256) NOT NULL ENABLE, 
	"CHANNEL_ID" NUMBER NOT NULL ENABLE, 
	"COBBLER_ID" VARCHAR2(64), 
	"COBBLER_XEN_ID" VARCHAR2(64), 
	"BOOT_IMAGE" VARCHAR2(128) DEFAULT ('spacewalk-koan'), 
	"KSTREE_TYPE" NUMBER NOT NULL ENABLE, 
	"INSTALL_TYPE" NUMBER NOT NULL ENABLE, 
	"KERNEL_OPTIONS" VARCHAR2(256), 
	"KERNEL_OPTIONS_POST" VARCHAR2(256), 
	"LAST_MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_KSTREE_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_KSTREE_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_KSTREE_CID_FK" FOREIGN KEY ("CHANNEL_ID")
	  REFERENCES "SPACEUSER"."RHNCHANNEL" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_KSTREE_KSTREETYPE_FK" FOREIGN KEY ("KSTREE_TYPE")
	  REFERENCES "SPACEUSER"."RHNKSTREETYPE" ("ID") ENABLE, 
	 CONSTRAINT "RHN_KSTREE_IT_FK" FOREIGN KEY ("INSTALL_TYPE")
	  REFERENCES "SPACEUSER"."RHNKSINSTALLTYPE" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

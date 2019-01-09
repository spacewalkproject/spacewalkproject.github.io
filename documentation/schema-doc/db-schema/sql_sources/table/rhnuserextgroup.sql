-- created by Oraschemadoc Wed Jan  9 15:07:08 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNUSEREXTGROUP"
   (	"ID" NUMBER NOT NULL ENABLE,
	"ORG_ID" NUMBER DEFAULT NULL,
	"LABEL" VARCHAR2(512) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNUSEREXTGROUP" ADD CONSTRAINT "RHN_USEREXTGROUP_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNUSEREXTGROUP" ADD CONSTRAINT "RHN_USEREXTGROUP_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE;

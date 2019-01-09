-- created by Oraschemadoc Wed Jan  9 15:07:08 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNUSERGROUP"
   (	"ID" NUMBER NOT NULL ENABLE,
	"NAME" VARCHAR2(64) NOT NULL ENABLE,
	"DESCRIPTION" VARCHAR2(1024) NOT NULL ENABLE,
	"MAX_MEMBERS" NUMBER,
	"CURRENT_MEMBERS" NUMBER DEFAULT (0) NOT NULL ENABLE,
	"GROUP_TYPE" NUMBER NOT NULL ENABLE,
	"ORG_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNUSERGROUP" ADD CONSTRAINT "RHN_USER_GROUP_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNUSERGROUP" ADD CONSTRAINT "RHN_UG_OID_GT_UQ" UNIQUE ("ORG_ID", "GROUP_TYPE") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNUSERGROUP" ADD CONSTRAINT "RHN_USERGROUP_TYPE_FK" FOREIGN KEY ("GROUP_TYPE")
	  REFERENCES "SPACEUSER"."RHNUSERGROUPTYPE" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNUSERGROUP" ADD CONSTRAINT "RHN_USER_GROUP_ORG_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE;

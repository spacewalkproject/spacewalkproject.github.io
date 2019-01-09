-- created by Oraschemadoc Wed Jan  9 15:07:06 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSNAPSHOT"
   (	"ID" NUMBER NOT NULL ENABLE,
	"ORG_ID" NUMBER NOT NULL ENABLE,
	"INVALID" NUMBER,
	"REASON" VARCHAR2(4000) NOT NULL ENABLE,
	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSNAPSHOT" ADD CONSTRAINT "RHN_SNAPSHOT_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSNAPSHOT" ADD CONSTRAINT "RHN_SNAPSHOT_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSNAPSHOT" ADD CONSTRAINT "RHN_SNAPSHOT_INVALID_FK" FOREIGN KEY ("INVALID")
	  REFERENCES "SPACEUSER"."RHNSNAPSHOTINVALIDREASON" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSNAPSHOT" ADD CONSTRAINT "RHN_SNAPSHOT_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;

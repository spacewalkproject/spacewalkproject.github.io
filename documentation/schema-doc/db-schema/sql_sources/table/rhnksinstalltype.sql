-- created by Oraschemadoc Wed Jan  9 15:07:00 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNKSINSTALLTYPE"
   (	"ID" NUMBER NOT NULL ENABLE,
	"LABEL" VARCHAR2(32) NOT NULL ENABLE,
	"NAME" VARCHAR2(64) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNKSINSTALLTYPE" ADD CONSTRAINT "RHN_KSINSTALLTYPE_ID_PK" PRIMARY KEY ("ID") ENABLE;

-- created by Oraschemadoc Wed Jan  9 15:06:55 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCHECKSUMTYPE"
   (	"ID" NUMBER NOT NULL ENABLE,
	"LABEL" VARCHAR2(32) NOT NULL ENABLE,
	"DESCRIPTION" VARCHAR2(64) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNCHECKSUMTYPE" ADD CONSTRAINT "RHN_CHECKSUMTYPE_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCHECKSUMTYPE" ADD CONSTRAINT "RHN_CHECKSUMTYPE_LABEL_UQ" UNIQUE ("LABEL") ENABLE;

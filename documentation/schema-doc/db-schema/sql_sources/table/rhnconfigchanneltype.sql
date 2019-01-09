-- created by Oraschemadoc Wed Jan  9 15:06:56 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCONFIGCHANNELTYPE"
   (	"ID" NUMBER NOT NULL ENABLE,
	"LABEL" VARCHAR2(64) NOT NULL ENABLE,
	"NAME" VARCHAR2(64) NOT NULL ENABLE,
	"PRIORITY" NUMBER DEFAULT (0) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNCONFIGCHANNELTYPE" ADD CONSTRAINT "RHN_CONFCHANTYPE_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCONFIGCHANNELTYPE" ADD CONSTRAINT "RHN_CONFCHANTYPE_LABEL_UQ" UNIQUE ("LABEL") ENABLE;
-- created by Oraschemadoc Wed Jan  9 15:06:54 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONVIRTSTART"
   (	"ACTION_ID" NUMBER NOT NULL ENABLE,
	"UUID" VARCHAR2(128) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNACTIONVIRTSTART" ADD CONSTRAINT "RHN_AVSTART_AID_PK" PRIMARY KEY ("ACTION_ID") ENABLE;

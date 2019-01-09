-- created by Oraschemadoc Wed Jan  9 15:06:52 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONCONFIGDATE"
   (	"ACTION_ID" NUMBER NOT NULL ENABLE,
	"START_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE,
	"END_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE,
	"IMPORT_CONTENTS" CHAR(1) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNACTIONCONFIGDATE" ADD CONSTRAINT "RHN_ACTIONCD_FILE_IC_CK" CHECK (import_contents in ('Y','N')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNACTIONCONFIGDATE" ADD CONSTRAINT "RHN_ACTIONCD_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNACTION" ("ID") ON DELETE CASCADE ENABLE;
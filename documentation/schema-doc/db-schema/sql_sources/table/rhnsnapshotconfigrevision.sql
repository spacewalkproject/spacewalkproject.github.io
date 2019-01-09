-- created by Oraschemadoc Wed Jan  9 15:07:06 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSNAPSHOTCONFIGREVISION"
   (	"SNAPSHOT_ID" NUMBER NOT NULL ENABLE,
	"CONFIG_REVISION_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSNAPSHOTCONFIGREVISION" ADD CONSTRAINT "RHN_SNAPSHOTCR_SID_FK" FOREIGN KEY ("SNAPSHOT_ID")
	  REFERENCES "SPACEUSER"."RHNSNAPSHOT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSNAPSHOTCONFIGREVISION" ADD CONSTRAINT "RHN_SNAPSHOTCR_CRID_FK" FOREIGN KEY ("CONFIG_REVISION_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGREVISION" ("ID") ENABLE;

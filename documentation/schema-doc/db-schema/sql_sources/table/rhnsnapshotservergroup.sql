-- created by Oraschemadoc Wed Jan  9 15:07:06 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSNAPSHOTSERVERGROUP"
   (	"SNAPSHOT_ID" NUMBER NOT NULL ENABLE,
	"SERVER_GROUP_ID" NUMBER NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSNAPSHOTSERVERGROUP" ADD CONSTRAINT "RHN_SNAPSHOTSG_SID_FK" FOREIGN KEY ("SNAPSHOT_ID")
	  REFERENCES "SPACEUSER"."RHNSNAPSHOT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSNAPSHOTSERVERGROUP" ADD CONSTRAINT "RHN_SNAPSHOTSG_SGID_FK" FOREIGN KEY ("SERVER_GROUP_ID")
	  REFERENCES "SPACEUSER"."RHNSERVERGROUP" ("ID") ENABLE;

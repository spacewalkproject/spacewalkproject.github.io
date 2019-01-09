-- created by Oraschemadoc Wed Jan  9 15:07:05 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERLOCK"
   (	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"LOCKER_ID" NUMBER,
	"REASON" VARCHAR2(4000),
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSERVERLOCK" ADD CONSTRAINT "RHN_SERVER_LOCK_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERLOCK" ADD CONSTRAINT "RHN_SERVER_LOCK_LID_FK" FOREIGN KEY ("LOCKER_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE SET NULL ENABLE;

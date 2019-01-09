-- created by Oraschemadoc Wed Jan  9 15:07:03 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERACTION"
   (	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"ACTION_ID" NUMBER NOT NULL ENABLE,
	"STATUS" NUMBER NOT NULL ENABLE,
	"RESULT_CODE" NUMBER,
	"RESULT_MSG" VARCHAR2(1024),
	"PICKUP_TIME" TIMESTAMP (6) WITH LOCAL TIME ZONE,
	"REMAINING_TRIES" NUMBER DEFAULT (5) NOT NULL ENABLE,
	"COMPLETION_TIME" TIMESTAMP (6) WITH LOCAL TIME ZONE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTION" ADD CONSTRAINT "RHN_SERVER_ACTION_SID_AID_UQ" UNIQUE ("SERVER_ID", "ACTION_ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTION" ADD CONSTRAINT "RHN_SERVER_ACTION_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTION" ADD CONSTRAINT "RHN_SERVER_ACTION_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNACTION" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTION" ADD CONSTRAINT "RHN_SERVER_ACTION_STATUS_FK" FOREIGN KEY ("STATUS")
	  REFERENCES "SPACEUSER"."RHNACTIONSTATUS" ("ID") ENABLE;
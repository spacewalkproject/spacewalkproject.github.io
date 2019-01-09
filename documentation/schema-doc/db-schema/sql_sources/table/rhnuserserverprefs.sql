-- created by Oraschemadoc Wed Jan  9 15:07:08 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNUSERSERVERPREFS"
   (	"USER_ID" NUMBER NOT NULL ENABLE,
	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"NAME" VARCHAR2(64) NOT NULL ENABLE,
	"VALUE" VARCHAR2(1) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNUSERSERVERPREFS" ADD CONSTRAINT "RHN_USERSERVERPREFS_UID_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNUSERSERVERPREFS" ADD CONSTRAINT "RHN_USERSERVERPREFS_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;
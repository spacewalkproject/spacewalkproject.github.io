-- created by Oraschemadoc Wed Jan  9 15:07:04 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERCUSTOMDATAVALUE"
   (	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"KEY_ID" NUMBER NOT NULL ENABLE,
	"VALUE" VARCHAR2(4000),
	"CREATED_BY" NUMBER,
	"LAST_MODIFIED_BY" NUMBER,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSERVERCUSTOMDATAVALUE" ADD CONSTRAINT "RHN_SCDV_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERCUSTOMDATAVALUE" ADD CONSTRAINT "RHN_SCDV_KID_FK" FOREIGN KEY ("KEY_ID")
	  REFERENCES "SPACEUSER"."RHNCUSTOMDATAKEY" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERCUSTOMDATAVALUE" ADD CONSTRAINT "RHN_SCDV_CB_FK" FOREIGN KEY ("CREATED_BY")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERCUSTOMDATAVALUE" ADD CONSTRAINT "RHN_SCDV_LMB_FK" FOREIGN KEY ("LAST_MODIFIED_BY")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE SET NULL ENABLE;

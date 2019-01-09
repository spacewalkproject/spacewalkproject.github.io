-- created by Oraschemadoc Wed Jan  9 15:07:08 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNVERSIONINFO"
   (	"LABEL" VARCHAR2(64) NOT NULL ENABLE,
	"NAME_ID" NUMBER NOT NULL ENABLE,
	"EVR_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNVERSIONINFO" ADD CONSTRAINT "RHN_VERSIONINFO_NID_FK" FOREIGN KEY ("NAME_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGENAME" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNVERSIONINFO" ADD CONSTRAINT "RHN_VERSIONINFO_EID_FK" FOREIGN KEY ("EVR_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEEVR" ("ID") ENABLE;
-- created by Oraschemadoc Wed Jan  9 15:06:58 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNFILE"
   (	"ID" NUMBER NOT NULL ENABLE,
	"ORG_ID" NUMBER,
	"FILE_SIZE" NUMBER NOT NULL ENABLE,
	"CHECKSUM_ID" NUMBER NOT NULL ENABLE,
	"PATH" VARCHAR2(1000) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNFILE" ADD CONSTRAINT "RHN_FILE_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNFILE" ADD CONSTRAINT "RHN_FILE_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNFILE" ADD CONSTRAINT "RHN_FILE_CHSUM_FK" FOREIGN KEY ("CHECKSUM_ID")
	  REFERENCES "SPACEUSER"."RHNCHECKSUM" ("ID") ENABLE;

-- created by Oraschemadoc Wed Jan  9 15:07:01 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNPACKAGEARCH"
   (	"ID" NUMBER NOT NULL ENABLE,
	"LABEL" VARCHAR2(64) NOT NULL ENABLE,
	"NAME" VARCHAR2(64) NOT NULL ENABLE,
	"ARCH_TYPE_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNPACKAGEARCH" ADD CONSTRAINT "RHN_PARCH_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNPACKAGEARCH" ADD CONSTRAINT "RHN_PARCH_LABEL_UQ" UNIQUE ("LABEL") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNPACKAGEARCH" ADD CONSTRAINT "RHN_PARCH_ATID_FK" FOREIGN KEY ("ARCH_TYPE_ID")
	  REFERENCES "SPACEUSER"."RHNARCHTYPE" ("ID") ENABLE;

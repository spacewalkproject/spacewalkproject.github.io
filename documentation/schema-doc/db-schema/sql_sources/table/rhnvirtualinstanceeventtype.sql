-- created by Oraschemadoc Wed Jan  9 15:07:08 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNVIRTUALINSTANCEEVENTTYPE"
   (	"ID" NUMBER NOT NULL ENABLE,
	"NAME" VARCHAR2(128) NOT NULL ENABLE,
	"LABEL" VARCHAR2(128) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNVIRTUALINSTANCEEVENTTYPE" ADD CONSTRAINT "RHN_VIET_ID_PK" PRIMARY KEY ("ID") ENABLE;

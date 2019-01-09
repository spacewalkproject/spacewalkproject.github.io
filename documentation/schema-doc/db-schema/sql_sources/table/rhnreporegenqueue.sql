-- created by Oraschemadoc Wed Jan  9 15:07:03 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNREPOREGENQUEUE"
   (	"ID" NUMBER,
	"CHANNEL_LABEL" VARCHAR2(128) NOT NULL ENABLE,
	"CLIENT" VARCHAR2(128),
	"REASON" VARCHAR2(128),
	"FORCE" CHAR(1),
	"BYPASS_FILTERS" CHAR(1),
	"NEXT_ACTION" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp),
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ;
  ALTER TABLE "SPACEUSER"."RHNREPOREGENQUEUE" ADD CONSTRAINT "RHN_REPOREGENQ_ID_PK" PRIMARY KEY ("ID") ENABLE;

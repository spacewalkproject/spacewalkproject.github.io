-- created by Oraschemadoc Wed Jan  9 15:07:01 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNPACKAGEFILEDELETEQUEUE"
   (	"PATH" VARCHAR2(1000),
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNPACKAGEFILEDELETEQUEUE" ADD CONSTRAINT "RHN_PFDQUEUE_PATH_UQ" UNIQUE ("PATH") ENABLE;

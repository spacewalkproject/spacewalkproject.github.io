-- created by Oraschemadoc Wed Jan  9 15:06:55 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCHANNELNEWESTPACKAGEAUDIT"
   (	"REFRESH_TIME" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"CHANNEL_ID" NUMBER NOT NULL ENABLE,
	"CALLER" VARCHAR2(256) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNCHANNELNEWESTPACKAGEAUDIT" ADD CONSTRAINT "RHN_CNP_AT_CID_FK" FOREIGN KEY ("CHANNEL_ID")
	  REFERENCES "SPACEUSER"."RHNCHANNEL" ("ID") ON DELETE CASCADE ENABLE;

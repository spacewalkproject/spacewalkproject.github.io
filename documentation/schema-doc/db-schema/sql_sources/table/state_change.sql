-- created by Oraschemadoc Wed Jan  9 15:07:09 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."STATE_CHANGE"
   (	"O_ID" VARCHAR2(64) NOT NULL ENABLE,
	"ENTRY_TIME" NUMBER NOT NULL ENABLE,
	"DATA" VARCHAR2(4000)
   ) ENABLE ROW MOVEMENT ;

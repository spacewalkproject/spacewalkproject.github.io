-- created by Oraschemadoc Wed Jan  9 15:06:52 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."QRTZ_TRIGGER_LISTENERS"
   (	"TRIGGER_NAME" VARCHAR2(200) NOT NULL ENABLE,
	"TRIGGER_GROUP" VARCHAR2(200) NOT NULL ENABLE,
	"TRIGGER_LISTENER" VARCHAR2(200) NOT NULL ENABLE
   ) ;
  ALTER TABLE "SPACEUSER"."QRTZ_TRIGGER_LISTENERS" ADD PRIMARY KEY ("TRIGGER_NAME", "TRIGGER_GROUP", "TRIGGER_LISTENER") ENABLE;
  ALTER TABLE "SPACEUSER"."QRTZ_TRIGGER_LISTENERS" ADD FOREIGN KEY ("TRIGGER_NAME", "TRIGGER_GROUP")
	  REFERENCES "SPACEUSER"."QRTZ_TRIGGERS" ("TRIGGER_NAME", "TRIGGER_GROUP") ENABLE;

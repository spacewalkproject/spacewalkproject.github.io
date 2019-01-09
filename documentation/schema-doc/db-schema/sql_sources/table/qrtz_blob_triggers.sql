-- created by Oraschemadoc Wed Jan  9 15:06:52 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."QRTZ_BLOB_TRIGGERS"
   (	"TRIGGER_NAME" VARCHAR2(200) NOT NULL ENABLE,
	"TRIGGER_GROUP" VARCHAR2(200) NOT NULL ENABLE,
	"BLOB_DATA" BLOB
   ) ;
  ALTER TABLE "SPACEUSER"."QRTZ_BLOB_TRIGGERS" ADD PRIMARY KEY ("TRIGGER_NAME", "TRIGGER_GROUP") ENABLE;
  ALTER TABLE "SPACEUSER"."QRTZ_BLOB_TRIGGERS" ADD FOREIGN KEY ("TRIGGER_NAME", "TRIGGER_GROUP")
	  REFERENCES "SPACEUSER"."QRTZ_TRIGGERS" ("TRIGGER_NAME", "TRIGGER_GROUP") ENABLE;

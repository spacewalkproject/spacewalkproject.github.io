-- created by Oraschemadoc Wed Jan  9 15:06:56 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCONFIGFILE"
   (	"ID" NUMBER NOT NULL ENABLE,
	"CONFIG_CHANNEL_ID" NUMBER NOT NULL ENABLE,
	"CONFIG_FILE_NAME_ID" NUMBER NOT NULL ENABLE,
	"LATEST_CONFIG_REVISION_ID" NUMBER,
	"STATE_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNCONFIGFILE" ADD CONSTRAINT "RHN_CONFFILE_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCONFIGFILE" ADD CONSTRAINT "RHN_CONFFILE_CCID_CFNID_UQ" UNIQUE ("CONFIG_CHANNEL_ID", "CONFIG_FILE_NAME_ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCONFIGFILE" ADD CONSTRAINT "RHN_CONFFILE_CCID_FK" FOREIGN KEY ("CONFIG_CHANNEL_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGCHANNEL" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCONFIGFILE" ADD CONSTRAINT "RHN_CONFFILE_CFNID_FK" FOREIGN KEY ("CONFIG_FILE_NAME_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGFILENAME" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCONFIGFILE" ADD CONSTRAINT "RHN_CONFFILE_SID_FK" FOREIGN KEY ("STATE_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGFILESTATE" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCONFIGFILE" ADD CONSTRAINT "RHN_CONFFILE_LCRID_FK" FOREIGN KEY ("LATEST_CONFIG_REVISION_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGREVISION" ("ID") ON DELETE SET NULL ENABLE;

-- created by Oraschemadoc Wed Jan  9 15:06:54 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCHANNEL"
   (	"ID" NUMBER NOT NULL ENABLE,
	"PARENT_CHANNEL" NUMBER,
	"ORG_ID" NUMBER,
	"CHANNEL_ARCH_ID" NUMBER NOT NULL ENABLE,
	"LABEL" VARCHAR2(128) NOT NULL ENABLE,
	"BASEDIR" VARCHAR2(256) NOT NULL ENABLE,
	"NAME" VARCHAR2(256) NOT NULL ENABLE,
	"SUMMARY" VARCHAR2(500) NOT NULL ENABLE,
	"DESCRIPTION" VARCHAR2(4000),
	"PRODUCT_NAME_ID" NUMBER,
	"GPG_KEY_URL" VARCHAR2(256),
	"GPG_KEY_ID" VARCHAR2(14),
	"GPG_KEY_FP" VARCHAR2(50),
	"END_OF_LIFE" TIMESTAMP (6) WITH LOCAL TIME ZONE,
	"CHECKSUM_TYPE_ID" NUMBER,
	"RECEIVING_UPDATES" CHAR(1) DEFAULT ('Y') NOT NULL ENABLE,
	"LAST_MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"LAST_SYNCED" TIMESTAMP (6) WITH LOCAL TIME ZONE,
	"CHANNEL_PRODUCT_ID" NUMBER,
	"CHANNEL_ACCESS" VARCHAR2(10) DEFAULT ('private'),
	"MAINT_NAME" VARCHAR2(128),
	"MAINT_EMAIL" VARCHAR2(128),
	"MAINT_PHONE" VARCHAR2(128),
	"SUPPORT_POLICY" VARCHAR2(256),
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNCHANNEL" ADD CONSTRAINT "RHN_CHANNEL_RU_CK" CHECK (receiving_updates in ('Y', 'N')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCHANNEL" ADD CONSTRAINT "RHN_CHANNEL_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCHANNEL" ADD CONSTRAINT "RHN_CHANNEL_PARENT_CH_FK" FOREIGN KEY ("PARENT_CHANNEL")
	  REFERENCES "SPACEUSER"."RHNCHANNEL" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCHANNEL" ADD CONSTRAINT "RHN_CHANNEL_ORG_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCHANNEL" ADD CONSTRAINT "RHN_CHANNEL_CAID_FK" FOREIGN KEY ("CHANNEL_ARCH_ID")
	  REFERENCES "SPACEUSER"."RHNCHANNELARCH" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCHANNEL" ADD CONSTRAINT "RHN_CHANNEL_PRODUCT_NAME_CH_FK" FOREIGN KEY ("PRODUCT_NAME_ID")
	  REFERENCES "SPACEUSER"."RHNPRODUCTNAME" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCHANNEL" ADD CONSTRAINT "RHN_CHANNEL_CHECKSUM_FK" FOREIGN KEY ("CHECKSUM_TYPE_ID")
	  REFERENCES "SPACEUSER"."RHNCHECKSUMTYPE" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCHANNEL" ADD CONSTRAINT "RHN_CHANNEL_CPID_FK" FOREIGN KEY ("CHANNEL_PRODUCT_ID")
	  REFERENCES "SPACEUSER"."RHNCHANNELPRODUCT" ("ID") ENABLE;

-- created by Oraschemadoc Wed Jan  9 15:07:03 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNRESETPASSWORD"
   (	"ID" NUMBER NOT NULL ENABLE,
	"USER_ID" NUMBER NOT NULL ENABLE,
	"TOKEN" VARCHAR2(64) NOT NULL ENABLE,
	"IS_VALID" CHAR(1) DEFAULT 'Y' NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ;
  ALTER TABLE "SPACEUSER"."RHNRESETPASSWORD" ADD CONSTRAINT "RHN_RSTPWD_IS_VALID_CK" CHECK (is_valid IN ('Y', 'N')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNRESETPASSWORD" ADD CONSTRAINT "RHN_RSTPWD_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNRESETPASSWORD" ADD CONSTRAINT "RHN_RSTPWD_TOKEN_UQ" UNIQUE ("TOKEN") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNRESETPASSWORD" ADD CONSTRAINT "RHN_RSTPWD_UID_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE CASCADE ENABLE;

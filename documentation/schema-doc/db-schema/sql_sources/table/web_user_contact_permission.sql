-- created by Oraschemadoc Wed Jan  9 15:07:10 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."WEB_USER_CONTACT_PERMISSION"
   (	"WEB_USER_ID" NUMBER NOT NULL ENABLE,
	"EMAIL" CHAR(1) DEFAULT ('N'),
	"MAIL" CHAR(1) DEFAULT ('N'),
	"CALL" CHAR(1) DEFAULT ('N'),
	"FAX" CHAR(1) DEFAULT ('N'),
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."WEB_USER_CONTACT_PERMISSION" ADD CONSTRAINT "WUCP_EMAIL_CK" CHECK (email in ('Y','N')) ENABLE;
  ALTER TABLE "SPACEUSER"."WEB_USER_CONTACT_PERMISSION" ADD CONSTRAINT "WUCP_MAIL_CK" CHECK (mail in ('Y','N')) ENABLE;
  ALTER TABLE "SPACEUSER"."WEB_USER_CONTACT_PERMISSION" ADD CONSTRAINT "WUCP_CALL_CK" CHECK (call in ('Y','N')) ENABLE;
  ALTER TABLE "SPACEUSER"."WEB_USER_CONTACT_PERMISSION" ADD CONSTRAINT "WUCP_FAX_CK" CHECK (fax in ('Y','N')) ENABLE;
  ALTER TABLE "SPACEUSER"."WEB_USER_CONTACT_PERMISSION" ADD CONSTRAINT "CONTPERM_WBUSERID_FK" FOREIGN KEY ("WEB_USER_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE CASCADE ENABLE;
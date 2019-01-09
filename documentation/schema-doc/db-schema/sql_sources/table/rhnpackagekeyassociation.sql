-- created by Oraschemadoc Wed Jan  9 15:07:01 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNPACKAGEKEYASSOCIATION"
   (	"PACKAGE_ID" NUMBER NOT NULL ENABLE,
	"KEY_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ;
  ALTER TABLE "SPACEUSER"."RHNPACKAGEKEYASSOCIATION" ADD CONSTRAINT "RHN_PKEYA_PID_FK" FOREIGN KEY ("PACKAGE_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGE" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNPACKAGEKEYASSOCIATION" ADD CONSTRAINT "RHN_PKEYA_KID_FK" FOREIGN KEY ("KEY_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEKEY" ("ID") ENABLE;

-- created by Oraschemadoc Wed Jan  9 15:07:05 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERPROFILEPACKAGE"
   (	"SERVER_PROFILE_ID" NUMBER NOT NULL ENABLE,
	"NAME_ID" NUMBER NOT NULL ENABLE,
	"EVR_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_ARCH_ID" NUMBER
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSERVERPROFILEPACKAGE" ADD CONSTRAINT "RHN_SPROFILE_SPID_FK" FOREIGN KEY ("SERVER_PROFILE_ID")
	  REFERENCES "SPACEUSER"."RHNSERVERPROFILE" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERPROFILEPACKAGE" ADD CONSTRAINT "RHN_SPROFILE_NID_FK" FOREIGN KEY ("NAME_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGENAME" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERPROFILEPACKAGE" ADD CONSTRAINT "RHN_SPROFILE_EVRID_FK" FOREIGN KEY ("EVR_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEEVR" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERPROFILEPACKAGE" ADD CONSTRAINT "RHN_SPROFILE_PACKAGE_FK" FOREIGN KEY ("PACKAGE_ARCH_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEARCH" ("ID") ENABLE;

-- created by Oraschemadoc Wed Jan  9 15:07:04 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYMISSING"
   (	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"ACTION_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_NAME_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_EVR_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_ARCH_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_CAPABILITY_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYMISSING" ADD CONSTRAINT "RHN_SACTIONVM_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYMISSING" ADD CONSTRAINT "RHN_SACTIONVM_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNACTION" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYMISSING" ADD CONSTRAINT "RHN_SACTIONVM_PNID_FK" FOREIGN KEY ("PACKAGE_NAME_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGENAME" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYMISSING" ADD CONSTRAINT "RHN_SACTIONVM_PEID_FK" FOREIGN KEY ("PACKAGE_EVR_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEEVR" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYMISSING" ADD CONSTRAINT "RHN_SACTIONVM_PAID_FK" FOREIGN KEY ("PACKAGE_ARCH_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEARCH" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYMISSING" ADD CONSTRAINT "RHN_SACTIONVM_PCID_FK" FOREIGN KEY ("PACKAGE_CAPABILITY_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGECAPABILITY" ("ID") ENABLE;

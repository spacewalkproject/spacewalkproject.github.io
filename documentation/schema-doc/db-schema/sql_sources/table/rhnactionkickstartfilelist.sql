-- created by Oraschemadoc Wed Jan  9 15:06:53 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONKICKSTARTFILELIST"
   (	"ACTION_KS_ID" NUMBER NOT NULL ENABLE,
	"FILE_LIST_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNACTIONKICKSTARTFILELIST" ADD CONSTRAINT "RHN_ACTIONKSFL_ASKID_FK" FOREIGN KEY ("ACTION_KS_ID")
	  REFERENCES "SPACEUSER"."RHNACTIONKICKSTART" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNACTIONKICKSTARTFILELIST" ADD CONSTRAINT "RHN_ACTIONKSFL_FLID_FK" FOREIGN KEY ("FILE_LIST_ID")
	  REFERENCES "SPACEUSER"."RHNFILELIST" ("ID") ON DELETE CASCADE ENABLE;

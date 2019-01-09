-- created by Oraschemadoc Wed Jan  9 15:07:09 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNXCCDFIDENT"
   (	"ID" NUMBER NOT NULL ENABLE,
	"IDENTSYSTEM_ID" NUMBER NOT NULL ENABLE,
	"IDENTIFIER" VARCHAR2(100) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNXCCDFIDENT" ADD CONSTRAINT "RHN_XCCDF_IDENT_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNXCCDFIDENT" ADD CONSTRAINT "RHN_XCCDF_IDENT_SYSTEM_FK" FOREIGN KEY ("IDENTSYSTEM_ID")
	  REFERENCES "SPACEUSER"."RHNXCCDFIDENTSYSTEM" ("ID") ENABLE;

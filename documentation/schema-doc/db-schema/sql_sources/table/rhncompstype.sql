-- created by Oraschemadoc Wed Jan  9 15:06:55 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCOMPSTYPE"
   (	"ID" NUMBER NOT NULL ENABLE,
	"LABEL" VARCHAR2(32) NOT NULL ENABLE
   ) ;
  ALTER TABLE "SPACEUSER"."RHNCOMPSTYPE" ADD CONSTRAINT "RHN_COMPS_TYPE_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCOMPSTYPE" ADD CONSTRAINT "RHN_COMPS_TYPE_TYPE_UQ" UNIQUE ("LABEL") ENABLE;

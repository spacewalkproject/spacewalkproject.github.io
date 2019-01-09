-- created by Oraschemadoc Wed Jan  9 15:07:03 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNREGTOKENCHANNELS"
   (	"TOKEN_ID" NUMBER NOT NULL ENABLE,
	"CHANNEL_ID" NUMBER NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNREGTOKENCHANNELS" ADD CONSTRAINT "RHN_REG_TOK_CHN_ID_FK" FOREIGN KEY ("TOKEN_ID")
	  REFERENCES "SPACEUSER"."RHNREGTOKEN" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNREGTOKENCHANNELS" ADD CONSTRAINT "RHN_REG_TOK_CHN_SGS_FK" FOREIGN KEY ("CHANNEL_ID")
	  REFERENCES "SPACEUSER"."RHNCHANNEL" ("ID") ON DELETE CASCADE ENABLE;
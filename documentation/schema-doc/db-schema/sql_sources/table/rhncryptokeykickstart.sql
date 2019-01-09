-- created by Oraschemadoc Wed Jan  9 15:06:57 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCRYPTOKEYKICKSTART"
   (	"CRYPTO_KEY_ID" NUMBER NOT NULL ENABLE,
	"KSDATA_ID" NUMBER NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNCRYPTOKEYKICKSTART" ADD CONSTRAINT "RHN_CKEY_KS_CKID_FK" FOREIGN KEY ("CRYPTO_KEY_ID")
	  REFERENCES "SPACEUSER"."RHNCRYPTOKEY" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCRYPTOKEYKICKSTART" ADD CONSTRAINT "RHN_CKEY_KS_KSD_FK" FOREIGN KEY ("KSDATA_ID")
	  REFERENCES "SPACEUSER"."RHNKSDATA" ("ID") ON DELETE CASCADE ENABLE;

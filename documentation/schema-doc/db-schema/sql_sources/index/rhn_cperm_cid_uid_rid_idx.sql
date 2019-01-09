-- created by Oraschemadoc Wed Jan  9 15:07:13 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "SPACEUSER"."RHN_CPERM_CID_UID_RID_IDX" ON "SPACEUSER"."RHNCHANNELPERMISSION" ("CHANNEL_ID", "USER_ID", "ROLE_ID")
  ;

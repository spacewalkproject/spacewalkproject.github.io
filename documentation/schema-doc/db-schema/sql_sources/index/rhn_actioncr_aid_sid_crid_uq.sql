-- created by Oraschemadoc Wed Jan  9 15:07:11 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "SPACEUSER"."RHN_ACTIONCR_AID_SID_CRID_UQ" ON "SPACEUSER"."RHNACTIONCONFIGREVISION" ("ACTION_ID", "SERVER_ID", "CONFIG_REVISION_ID")
  ;

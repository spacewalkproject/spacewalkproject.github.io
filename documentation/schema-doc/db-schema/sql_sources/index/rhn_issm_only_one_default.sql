-- created by Oraschemadoc Wed Jan  9 15:07:14 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "SPACEUSER"."RHN_ISSM_ONLY_ONE_DEFAULT" ON "SPACEUSER"."RHNISSMASTER" (CASE  WHEN "IS_CURRENT_MASTER"='Y' THEN "IS_CURRENT_MASTER" END )
  ;

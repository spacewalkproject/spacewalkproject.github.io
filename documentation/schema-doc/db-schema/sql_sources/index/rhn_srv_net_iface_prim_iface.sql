-- created by Oraschemadoc Wed Jan  9 15:07:19 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "SPACEUSER"."RHN_SRV_NET_IFACE_PRIM_IFACE" ON "SPACEUSER"."RHNSERVERNETINTERFACE" (CASE  WHEN "IS_PRIMARY" IS NULL THEN NULL ELSE "SERVER_ID" END )
  ;

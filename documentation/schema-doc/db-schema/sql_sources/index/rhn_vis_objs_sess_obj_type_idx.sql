-- created by Oraschemadoc Wed Jan  9 15:07:20 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "SPACEUSER"."RHN_VIS_OBJS_SESS_OBJ_TYPE_IDX" ON "SPACEUSER"."RHNVISIBLEOBJECTS" ("PXT_SESSION_ID", "OBJECT_ID", "OBJECT_TYPE")
  ;

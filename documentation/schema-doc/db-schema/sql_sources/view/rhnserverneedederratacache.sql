-- created by Oraschemadoc Wed Jan  9 15:07:23 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVERNEEDEDERRATACACHE" ("SERVER_ID", "ERRATA_ID") AS
  select
   distinct  server_id, errata_id
   from rhnServerNeededCache;

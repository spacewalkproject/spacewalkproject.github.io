-- created by Oraschemadoc Wed Apr 11 12:22:51 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVERNEEDEDERRATACACHE" ("SERVER_ID", "ERRATA_ID") AS 
  select
   distinct  server_id, errata_id
   from rhnServerNeededCache
/

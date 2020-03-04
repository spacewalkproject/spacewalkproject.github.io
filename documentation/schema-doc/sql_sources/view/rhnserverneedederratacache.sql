-- created by Oraschemadoc Wed Mar  4 07:58:14 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVERNEEDEDERRATACACHE" ("SERVER_ID", "ERRATA_ID") AS 
  select
   distinct  server_id, errata_id
   from rhnServerNeededCache
/

-- created by Oraschemadoc Wed Apr 11 12:22:50 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVERCRASHCOUNT" ("SERVER_ID", "UNIQUE_COUNT", "TOTAL_COUNT", "LAST_REPORT") AS 
  select server_id,
       count(id) as unique_count,
       sum(count) as total_count,
       max(modified) as last_report
  from rhnServerCrash
 group by server_id
/

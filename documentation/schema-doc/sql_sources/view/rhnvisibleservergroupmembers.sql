-- created by Oraschemadoc Wed Mar  4 07:58:15 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNVISIBLESERVERGROUPMEMBERS" ("SERVER_ID", "SERVER_GROUP_ID", "CREATED", "MODIFIED") AS 
  SELECT SGM."SERVER_ID",SGM."SERVER_GROUP_ID",SGM."CREATED",SGM."MODIFIED"
    FROM rhnServerGroup SG,
         rhnServerGroupMembers SGM
   WHERE SGM.server_group_id = SG.id
     AND SG.group_type IS NULL
/

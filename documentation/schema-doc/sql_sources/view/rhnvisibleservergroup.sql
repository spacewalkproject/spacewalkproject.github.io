-- created by Oraschemadoc Wed Mar  4 07:58:15 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNVISIBLESERVERGROUP" ("ID", "NAME", "DESCRIPTION", "CURRENT_MEMBERS", "GROUP_TYPE", "ORG_ID", "CREATED", "MODIFIED") AS 
  SELECT "ID","NAME","DESCRIPTION","CURRENT_MEMBERS","GROUP_TYPE","ORG_ID","CREATED","MODIFIED"
    FROM rhnServerGroup SG
   WHERE SG.group_type IS NULL
/

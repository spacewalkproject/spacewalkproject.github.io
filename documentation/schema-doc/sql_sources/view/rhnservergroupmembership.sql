-- created by Oraschemadoc Wed Apr 11 12:22:51 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVERGROUPMEMBERSHIP" ("ORG_ID", "SERVER_ID", "GROUP_ID", "GROUP_NAME", "GROUP_TYPE", "CURRENT_MEMBERS") AS 
  SELECT   SG.org_id, SGM.server_id, SG.id, SG.name, SGT.label, SG.current_members
  FROM
	 rhnServerGroupMembers SGM
             right join
    	 rhnServerGroup SG on (SG.id = SGM.server_group_id)
             left join
         rhnServerGroupType SGT on (SG.group_type = SGT.id)

/

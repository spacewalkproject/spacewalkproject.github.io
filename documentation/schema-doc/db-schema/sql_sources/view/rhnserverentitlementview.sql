-- created by Oraschemadoc Wed Jan  9 15:07:23 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVERENTITLEMENTVIEW" ("SERVER_ID", "SERVER_GROUP_TYPE_ID", "LABEL", "PERMANENT", "IS_BASE") AS
  select
   distinct
   sgm.server_id,
   sgt.id,
   sgt.label,
   sgt.permanent,
   sgt.is_base
from
   rhnServerGroupType sgt,
   rhnServerGroup sg,
   rhnServerGroupMembers sgm
where
   sg.id = sgm.server_group_id
   and sg.group_type = sgt.id;

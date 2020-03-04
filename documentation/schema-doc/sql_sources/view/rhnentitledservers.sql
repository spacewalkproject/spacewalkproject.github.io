-- created by Oraschemadoc Wed Mar  4 07:58:13 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNENTITLEDSERVERS" ("ID", "ORG_ID", "DIGITAL_SERVER_ID", "SERVER_ARCH_ID", "OS", "RELEASE", "NAME", "DESCRIPTION", "INFO", "SECRET") AS 
  select distinct
    S.id,
    S.org_id,
    S.digital_server_id,
    S.server_arch_id,
    S.os,
    S.release,
    S.name,
    S.description,
    S.info,
    S.secret
from
    rhnServerGroup SG,
    rhnServerGroupType SGT,
    rhnServerGroupMembers SGM,
    rhnServer S
where
    S.id = SGM.server_id
and SG.id = SGM.server_group_id
and SGT.label IN ('enterprise_entitled')
and SG.group_type = SGT.id
and SG.org_id = S.org_id

/

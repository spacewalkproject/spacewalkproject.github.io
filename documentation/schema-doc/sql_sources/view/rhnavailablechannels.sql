-- created by Oraschemadoc Wed Mar  4 07:58:12 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNAVAILABLECHANNELS" ("ORG_ID", "CHANNEL_ID", "CHANNEL_DEPTH", "CHANNEL_NAME", "CHANNEL_ARCH_ID", "PADDED_NAME", "LAST_MODIFIED", "CHANNEL_LABEL", "PARENT_OR_SELF_LABEL", "PARENT_OR_SELF_ID") AS 
  select
     ct.org_id,
     ct.id,
     CT.depth,
     CT.name,
     CT.channel_arch_id,
     CT.padded_name,
     CT.last_modified,
     CT.label,
     CT.parent_or_self_label,
     CT.parent_or_self_id
from
     rhnOrgChannelTreeView CT
UNION ALL
select
     ct.org_id,
     ct.id,
     CT.depth,
     CT.name,
     CT.channel_arch_id,
     CT.padded_name,
     CT.last_modified,
     CT.label,
     CT.parent_or_self_label,
     CT.parent_or_self_id
from
     rhnSharedChannelTreeView CT

/

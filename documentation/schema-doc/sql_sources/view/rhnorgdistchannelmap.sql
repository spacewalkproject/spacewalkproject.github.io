-- created by Oraschemadoc Wed Apr 11 12:22:50 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNORGDISTCHANNELMAP" ("ID", "FOR_ORG_ID", "ORG_ID", "OS", "RELEASE", "CHANNEL_ARCH_ID", "CHANNEL_ID") AS 
  SELECT CASE WHEN dcm_o.org_id IS NOT NULL THEN dcm_o.id ELSE dcm_n.id END id,
        o.id as for_org_id,
        dcm_o.org_id,
        CASE WHEN dcm_o.org_id IS NOT NULL THEN dcm_o.os ELSE dcm_n.os END os,
        CASE WHEN dcm_o.org_id IS NOT NULL THEN dcm_o.release ELSE dcm_n.release END as release,
        CASE WHEN dcm_o.org_id IS NOT NULL THEN dcm_o.channel_arch_id ELSE dcm_n.channel_arch_id END as channel_arch_id,
        CASE WHEN dcm_o.org_id IS NOT NULL THEN dcm_o.channel_id ELSE dcm_n.channel_id END as channel_id
FROM web_customer o
    JOIN (SELECT DISTINCT release, channel_arch_id from rhnDistChannelMap) dcm ON 1 = 1
    LEFT JOIN rhnDistChannelMap dcm_n ON dcm_n.org_id IS NULL
        AND dcm_n.release = dcm.release
        AND dcm_n.channel_arch_id = dcm.channel_arch_id
    LEFT JOIN rhnDistChannelMap dcm_o ON dcm_o.org_id = o.id
        AND dcm_o.release = dcm.release
        AND dcm_o.channel_arch_id = dcm.channel_arch_id
WHERE (dcm_o.channel_id IS NOT NULL OR dcm_n.channel_id IS NOT NULL)
ORDER BY org_id, release, channel_arch_id
/

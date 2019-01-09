-- created by Oraschemadoc Wed Jan  9 15:07:23 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVERGROUPOVERVIEW" ("ORG_ID", "SECURITY_ERRATA", "BUG_ERRATA", "ENHANCEMENT_ERRATA", "GROUP_ID", "GROUP_NAME", "GROUP_ADMINS", "SERVER_COUNT", "MODIFIED") AS
  SELECT SG.org_id,
         (SELECT COUNT(distinct E.id)
            FROM rhnErrata E,
                 rhnServerNeededErrataCache SNEC,
                 rhnServerGroupMembers SGM
           WHERE E.advisory_type = 'Security Advisory'
                 and SNEC.errata_id = e.id
                 and SNEC.server_id = sgm.server_id
                 and sgm.server_group_id = sg.id
                 AND EXISTS ( SELECT 1
                              FROM rhnServerFeaturesView SFV
                              WHERE SFV.server_id = SGM.server_id
                                    AND SFV.label = 'ftr_system_grouping')),
         (SELECT COUNT(distinct E.id)
            FROM rhnErrata E,
                 rhnServerNeededErrataCache SNEC,
                 rhnServerGroupMembers SGM
           WHERE E.advisory_type = 'Bug Fix Advisory'
                 and SNEC.errata_id = e.id
                 and SNEC.server_id = sgm.server_id
                 and sgm.server_group_id = sg.id
                 AND EXISTS ( SELECT 1
                              FROM rhnServerFeaturesView SFV
                              WHERE SFV.server_id = SGM.server_id
                                    AND SFV.label = 'ftr_system_grouping')),
         (SELECT COUNT(distinct E.id)
            FROM rhnErrata E,
                 rhnServerNeededErrataCache SNEC,
                 rhnServerGroupMembers SGM
           WHERE E.advisory_type = 'Product Enhancement Advisory'
                 and SNEC.errata_id = e.id
                 and SNEC.server_id = sgm.server_id
                 and sgm.server_group_id = sg.id
                 AND EXISTS ( SELECT 1
                              FROM rhnServerFeaturesView SFV
                              WHERE SFV.server_id = SGM.server_id
                                    AND SFV.label = 'ftr_system_grouping')),
         SG.id, SG.name,
         (SELECT COUNT(*) FROM rhnUserManagedServerGroups UMSG WHERE UMSG.server_group_id = SG.id),
         (SELECT COUNT(*) FROM rhnServerGroupMembers SGM WHERE SGM.server_group_id = SG.id
                 AND EXISTS ( SELECT 1
                              FROM rhnServerFeaturesView SFV
                              WHERE SFV.server_id = SGM.server_id
                                    AND SFV.label = 'ftr_system_grouping')),
         CURRENT_TIMESTAMP
    FROM rhnServerGroup SG;

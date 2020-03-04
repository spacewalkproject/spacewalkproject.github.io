-- created by Oraschemadoc Wed Mar  4 07:58:13 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNCHANNELNEWESTPACKAGEVIEW" ("CHANNEL_ID", "NAME_ID", "EVR_ID", "PACKAGE_ARCH_ID", "PACKAGE_ID") AS 
  SELECT channel_id,
       name_id,
       evr_id,
       package_arch_id,
       max(package_id) as package_id
FROM (
       SELECT m.channel_id          as channel_id,
              p.name_id             as name_id,
              p.evr_id              as evr_id,
              m.package_arch_id     as package_arch_id,
              p.id                  as package_id
         FROM
              (select max(pe.evr) AS max_evr,
                      cp.channel_id,
                      p.name_id,
                      p.package_arch_id
                 from rhnPackageEVR       pe,
                      rhnPackage          p,
                      rhnChannelPackage   cp
                where p.evr_id = pe.id
                  and cp.package_id = p.id
                group by cp.channel_id, p.name_id, p.package_arch_id) m,
              rhnPackageEVR       pe,
              rhnPackage          p,
              rhnChannelPackage   chp
        WHERE m.max_evr = pe.evr
          AND m.name_id = p.name_id
          AND m.package_arch_id = p.package_arch_id
          AND p.evr_id = pe.id
          AND chp.package_id = p.id
          AND chp.channel_id = m.channel_id
) latest_packages
group by channel_id, name_id, evr_id, package_arch_id

/

-- created by Oraschemadoc Wed Mar  4 07:58:14 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVEROUTDATEDPACKAGES" ("SERVER_ID", "PACKAGE_NAME_ID", "PACKAGE_EVR_ID", "PACKAGE_ARCH_ID", "PACKAGE_NVRE", "ERRATA_ID", "ERRATA_ADVISORY") AS 
  SELECT DISTINCT SNC.server_id,
       P.name_id,
       P.evr_id,
       P.package_arch_id,
       PN.name || '-' || evr_t_as_vre_simple( PE.evr ),
       E.id,
       E.advisory
  FROM rhnPackageName PN,
       rhnPackageEVR PE,
       rhnPackage P,
       rhnServerNeededCache SNC
         left outer join
        rhnErrata E
          on SNC.errata_id = E.id
 WHERE SNC.package_id = P.id
   AND P.name_id = PN.id
   AND P.evr_id = PE.id
/

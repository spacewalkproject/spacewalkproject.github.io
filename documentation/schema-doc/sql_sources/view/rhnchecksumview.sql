-- created by Oraschemadoc Wed Apr 11 12:22:50 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNCHECKSUMVIEW" ("ID", "CHECKSUM_TYPE", "CHECKSUM") AS 
  select c.id,
       ct.label checksum_type,
       c.checksum
  from rhnChecksum c
  left join rhnChecksumType ct
    on c.checksum_type_id = ct.id
/

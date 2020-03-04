-- created by Oraschemadoc Wed Mar  4 07:58:14 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVERNEEDEDPACKAGECACHE" ("SERVER_ID", "PACKAGE_ID", "ERRATA_ID") AS 
  select
	server_id,
	package_id,
	max(errata_id) as errata_id
	from rhnServerNeededCache
	group by server_id, package_id
/

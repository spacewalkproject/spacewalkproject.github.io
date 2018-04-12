-- created by Oraschemadoc Wed Apr 11 12:22:51 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVERNEEDEDPACKAGECACHE" ("SERVER_ID", "PACKAGE_ID", "ERRATA_ID") AS 
  select
	server_id,
	package_id,
	max(errata_id) as errata_id
	from rhnServerNeededCache
	group by server_id, package_id
/

-- created by Oraschemadoc Wed Mar  4 07:58:17 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_ERRATA_PACKAGE_MOD_TRIG" 
before insert or update or delete on rhnErrataPackage
for each row
begin
	if inserting or updating then
		:new.modified := current_timestamp;
	end if;
	if deleting then
		update rhnErrata
		set rhnErrata.last_modified = current_timestamp
		where rhnErrata.id in ( :old.errata_id );
	end if;
end rhn_errata_package_mod_trig;
ALTER TRIGGER "SPACEUSER"."RHN_ERRATA_PACKAGE_MOD_TRIG" ENABLE
/

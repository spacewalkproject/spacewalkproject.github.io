-- created by Oraschemadoc Wed Apr 11 12:22:55 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_PACK_EVR_NO_UPDEL_TRIG" 
before update or delete on rhnPackageEvr
declare
	operation varchar(20);
begin
	if updating then
		operation := 'UPDATE';
	elsif deleting then
		operation := 'DELETE';
	else
		raise_application_error(-20051, 'Unknown operation (no UPDATE and no DELETE)');
	end if;
	raise_application_error(-20050, 'Permission denied: ' || operation || ' is not allowed on RHNPACKAGEEVR');
end;
ALTER TRIGGER "SPACEUSER"."RHN_PACK_EVR_NO_UPDEL_TRIG" ENABLE
/

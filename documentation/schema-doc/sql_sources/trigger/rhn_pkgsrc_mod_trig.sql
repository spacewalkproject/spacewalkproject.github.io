-- created by Oraschemadoc Wed Mar  4 07:58:17 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_PKGSRC_MOD_TRIG" 
before insert or update on rhnPackageSource
for each row
begin
        :new.modified := current_timestamp;
	:new.last_modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."RHN_PKGSRC_MOD_TRIG" ENABLE
/

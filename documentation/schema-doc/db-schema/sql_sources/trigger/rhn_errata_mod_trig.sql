-- created by Oraschemadoc Wed Jan  9 15:07:25 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_ERRATA_MOD_TRIG"
before insert or update on rhnErrata
for each row
begin
     if ( :new.last_modified = :old.last_modified ) or
        ( :new.last_modified is null )  then
        :new.last_modified := current_timestamp;
     end if;

		:new.modified := current_timestamp;
end rhn_errata_mod_trig;
/
ALTER TRIGGER "SPACEUSER"."RHN_ERRATA_MOD_TRIG" ENABLE;

-- created by Oraschemadoc Wed Aug 30 22:57:46 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_KSTREEFILE_MOD_TRIG" 
before insert or update on rhnKSTreeFile
for each row
begin
	:new.modified := current_timestamp;
	-- allow us to manually set last_modified if we wish
	if :new.last_modified = :old.last_modified
	then
  	    :new.last_modified := current_timestamp;
        end if;
end rhn_kstreefile_mod_trig;
ALTER TRIGGER "SPACEUSER"."RHN_KSTREEFILE_MOD_TRIG" ENABLE
/

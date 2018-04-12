-- created by Oraschemadoc Wed Apr 11 12:22:56 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_U_S_PREFS_MOD_TRIG" 
before insert or update on rhnUserServerPrefs
for each row
begin
        :new.modified := current_timestamp;
        :new.value := upper(:new.value);
end;
ALTER TRIGGER "SPACEUSER"."RHN_U_S_PREFS_MOD_TRIG" ENABLE
/

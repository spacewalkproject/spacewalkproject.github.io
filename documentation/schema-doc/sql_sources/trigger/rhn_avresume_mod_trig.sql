-- created by Oraschemadoc Wed Apr 11 12:22:53 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_AVRESUME_MOD_TRIG" 
before insert or update on rhnActionVirtResume
for each row
begin
    :new.modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."RHN_AVRESUME_MOD_TRIG" ENABLE
/

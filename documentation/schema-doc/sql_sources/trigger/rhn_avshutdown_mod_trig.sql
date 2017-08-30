-- created by Oraschemadoc Wed Aug 30 22:57:44 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_AVSHUTDOWN_MOD_TRIG" 
before insert or update on rhnActionVirtShutdown
for each row
begin
    :new.modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."RHN_AVSHUTDOWN_MOD_TRIG" ENABLE
/

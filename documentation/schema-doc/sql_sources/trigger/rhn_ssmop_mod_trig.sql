-- created by Oraschemadoc Wed Apr 11 12:22:56 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_SSMOP_MOD_TRIG" 
before insert or update on rhnSsmOperation
for each row
begin
    :new.modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."RHN_SSMOP_MOD_TRIG" ENABLE
/

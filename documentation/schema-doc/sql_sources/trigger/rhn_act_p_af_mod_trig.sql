-- created by Oraschemadoc Wed Mar  4 07:58:16 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_ACT_P_AF_MOD_TRIG" 
before insert or update on rhnActionPackageAnswerfile
for each row
begin
	:new.modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."RHN_ACT_P_AF_MOD_TRIG" ENABLE
/

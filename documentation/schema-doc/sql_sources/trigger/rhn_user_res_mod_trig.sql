-- created by Oraschemadoc Wed Mar  4 07:58:18 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_USER_RES_MOD_TRIG" 
before insert or update on rhnUserreserved
for each row
begin
	:new.login_uc := upper(:new.login);
        :new.modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."RHN_USER_RES_MOD_TRIG" ENABLE
/

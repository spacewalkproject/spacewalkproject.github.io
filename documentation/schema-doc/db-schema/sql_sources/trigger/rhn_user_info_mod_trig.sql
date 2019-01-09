-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_USER_INFO_MOD_TRIG"
before insert or update on rhnUserInfo
for each row
begin
	:new.modified := current_timestamp;
end rhn_user_info_mod_trig;
/
ALTER TRIGGER "SPACEUSER"."RHN_USER_INFO_MOD_TRIG" ENABLE;

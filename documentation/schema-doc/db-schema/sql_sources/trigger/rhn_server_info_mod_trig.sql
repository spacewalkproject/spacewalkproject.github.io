-- created by Oraschemadoc Wed Jan  9 15:07:25 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_SERVER_INFO_MOD_TRIG"
before insert or update on rhnServerInfo
for each row
begin
	if :new.checkin is NULL
	then
	        :new.checkin := current_timestamp;
	end if;
end;
/
ALTER TRIGGER "SPACEUSER"."RHN_SERVER_INFO_MOD_TRIG" ENABLE;

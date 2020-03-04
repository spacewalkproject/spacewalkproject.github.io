-- created by Oraschemadoc Wed Mar  4 07:58:18 2020
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
ALTER TRIGGER "SPACEUSER"."RHN_SERVER_INFO_MOD_TRIG" ENABLE
/

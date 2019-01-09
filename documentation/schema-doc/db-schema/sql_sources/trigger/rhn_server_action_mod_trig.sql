-- created by Oraschemadoc Wed Jan  9 15:07:25 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_SERVER_ACTION_MOD_TRIG"
before insert or update on rhnServerAction
for each row
declare
	handle_status	number;
begin
	:new.modified := current_timestamp;
	handle_status := 0;
	if updating then
		if :new.status != :old.status then
			handle_status := 1;
		end if;
	else
		handle_status := 1;
	end if;

	if handle_status = 1 then
		if :new.status = 1 then
			:new.pickup_time := current_timestamp;
		elsif :new.status = 2 then
			:new.completion_time := current_timestamp;
		end if;
	end if;
end;
/
ALTER TRIGGER "SPACEUSER"."RHN_SERVER_ACTION_MOD_TRIG" ENABLE;

-- created by Oraschemadoc Wed Jan  9 15:07:25 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_PCLIENT_STATE_MOD_TRIG"
before insert or update on rhnPushClientState
for each row
begin
	:new.modified := current_timestamp;
end rhn_pclient_state_mod_trig;
/
ALTER TRIGGER "SPACEUSER"."RHN_PCLIENT_STATE_MOD_TRIG" ENABLE;

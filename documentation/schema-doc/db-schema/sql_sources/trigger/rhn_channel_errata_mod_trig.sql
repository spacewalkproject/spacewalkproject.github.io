-- created by Oraschemadoc Wed Jan  9 15:07:24 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_CHANNEL_ERRATA_MOD_TRIG"
before insert or update on rhnChannelErrata
for each row
begin
	:new.modified := current_timestamp;
end rhn_channel_errata_mod_trig;
/
ALTER TRIGGER "SPACEUSER"."RHN_CHANNEL_ERRATA_MOD_TRIG" ENABLE;

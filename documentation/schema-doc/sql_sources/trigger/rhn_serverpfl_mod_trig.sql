-- created by Oraschemadoc Wed Apr 11 12:22:56 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_SERVERPFL_MOD_TRIG" 
before insert or update on rhnServerPreserveFileList
for each row
begin
	:new.modified := current_timestamp;
end rhn_serverpfl_mod_trig;
ALTER TRIGGER "SPACEUSER"."RHN_SERVERPFL_MOD_TRIG" ENABLE
/

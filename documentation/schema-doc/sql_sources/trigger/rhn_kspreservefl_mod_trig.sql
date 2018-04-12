-- created by Oraschemadoc Wed Apr 11 12:22:54 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_KSPRESERVEFL_MOD_TRIG" 
before insert or update on rhnKickstartPreserveFileList
for each row
begin
	:new.modified := current_timestamp;
end rhn_kspreservefl_mod_trig;
ALTER TRIGGER "SPACEUSER"."RHN_KSPRESERVEFL_MOD_TRIG" ENABLE
/

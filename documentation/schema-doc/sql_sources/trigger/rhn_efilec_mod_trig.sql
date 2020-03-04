-- created by Oraschemadoc Wed Mar  4 07:58:17 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_EFILEC_MOD_TRIG" 
before insert or update on rhnErrataFileChannel
for each row
begin
	:new.modified := current_timestamp;
end rhn_efilec_mod_trig;
ALTER TRIGGER "SPACEUSER"."RHN_EFILEC_MOD_TRIG" ENABLE
/

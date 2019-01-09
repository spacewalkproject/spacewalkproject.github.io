-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_SNAPSHOTCC_MOD_TRIG"
before insert or update on rhnSnapshotConfigChannel
for each row
begin
	:new.modified := current_timestamp;
end;
/
ALTER TRIGGER "SPACEUSER"."RHN_SNAPSHOTCC_MOD_TRIG" ENABLE;

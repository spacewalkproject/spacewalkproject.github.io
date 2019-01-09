-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_SNAPSHOTSG_MOD_TRIG"
before insert or update on rhnSnapshotServerGroup
for each row
begin
	update rhnSnapshot set modified = current_timestamp where id = :new.snapshot_id;
end;
/
ALTER TRIGGER "SPACEUSER"."RHN_SNAPSHOTSG_MOD_TRIG" ENABLE;

-- created by Oraschemadoc Wed Apr 11 12:22:54 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_CONFREVISION_DEL_TRIG" 
before delete on rhnConfigRevision
for each row
declare
        cr_removed number := lookup_snapshot_invalid_reason('cr_removed');
begin
        update rhnSnapshot
           set invalid = cr_removed
         where id in (select snapshot_id
                        from rhnSnapshotConfigRevision
                       where config_revision_id = :old.id);
        delete from rhnSnapshotConfigRevision
         where config_revision_id = :old.id;
end;
ALTER TRIGGER "SPACEUSER"."RHN_CONFREVISION_DEL_TRIG" ENABLE
/

-- created by Oraschemadoc Wed Mar  4 07:58:17 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_KSTREE_MOD_TRIG" 
before insert or update on rhnKickstartableTree
for each row
begin
     -- Basically if we're changing something other than cobbler_id,
     -- cobbler_xen_id, and last_modified - or if last_modified is
     -- explicity set to null. Gets complicated because we have
     -- to allow for the possibility of the ids being null
     if ((not :old.cobbler_id is null and :new.cobbler_id = :old.cobbler_id) or
            (:old.cobbler_id is null and :new.cobbler_id is null)) and
        ((not :old.cobbler_xen_id is null and :new.cobbler_xen_id = :old.cobbler_xen_id) or
            (:old.cobbler_xen_id is null and :new.cobbler_xen_id is null)) and
        (:new.last_modified = :old.last_modified) or
        (:new.last_modified is null ) then
             :new.last_modified := current_timestamp;
     end if;

	:new.modified := current_timestamp;
end rhn_kstree_mod_trig;
ALTER TRIGGER "SPACEUSER"."RHN_KSTREE_MOD_TRIG" ENABLE
/

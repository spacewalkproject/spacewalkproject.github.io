-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_UG_MEMBER_DEL_TRIG"
before delete on rhnUserGroupMembers
for each row
begin
        update rhnUserGroup
        set current_members = current_members - 1
        where id = :old.user_group_id;
end;
/
ALTER TRIGGER "SPACEUSER"."RHN_UG_MEMBER_DEL_TRIG" ENABLE;

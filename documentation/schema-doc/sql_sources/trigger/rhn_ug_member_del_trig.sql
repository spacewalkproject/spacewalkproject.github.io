-- created by Oraschemadoc Wed Mar  4 07:58:18 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_UG_MEMBER_DEL_TRIG" 
before delete on rhnUserGroupMembers
for each row
begin
        update rhnUserGroup
        set current_members = current_members - 1
        where id = :old.user_group_id;
end;
ALTER TRIGGER "SPACEUSER"."RHN_UG_MEMBER_DEL_TRIG" ENABLE
/

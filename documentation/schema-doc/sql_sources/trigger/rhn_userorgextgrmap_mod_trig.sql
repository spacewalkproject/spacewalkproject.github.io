-- created by Oraschemadoc Wed Aug 30 22:57:48 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_USERORGEXTGRMAP_MOD_TRIG" 
before insert or update on rhnOrgExtGroupMapping
for each row
begin
        if :new.id is null then
            select rhn_orgextgroupmap_seq.nextval into :new.id from dual;
        end if;
        :new.modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."RHN_USERORGEXTGRMAP_MOD_TRIG" ENABLE
/

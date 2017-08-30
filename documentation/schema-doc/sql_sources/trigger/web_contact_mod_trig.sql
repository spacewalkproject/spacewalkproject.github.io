-- created by Oraschemadoc Wed Aug 30 22:57:48 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."WEB_CONTACT_MOD_TRIG" 
before insert or update on web_contact
for each row
begin
        :new.modified := current_timestamp;
        :new.login_uc := UPPER(:new.login);
        IF inserting THEN
        INSERT INTO web_contact_all (id, org_id, login)
            VALUES (:new.id, :new.org_id, :new.login);
        END IF;

end;
ALTER TRIGGER "SPACEUSER"."WEB_CONTACT_MOD_TRIG" ENABLE
/

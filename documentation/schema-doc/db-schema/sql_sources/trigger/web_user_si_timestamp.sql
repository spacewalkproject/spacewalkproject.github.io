-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."WEB_USER_SI_TIMESTAMP"
before insert or update on web_user_site_info
for each row
begin
  :new.email_uc := upper(:new.email);
  :new.modified := current_timestamp;
end;
/
ALTER TRIGGER "SPACEUSER"."WEB_USER_SI_TIMESTAMP" ENABLE;

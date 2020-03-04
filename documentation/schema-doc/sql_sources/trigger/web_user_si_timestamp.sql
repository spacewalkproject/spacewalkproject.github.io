-- created by Oraschemadoc Wed Mar  4 07:58:19 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."WEB_USER_SI_TIMESTAMP" 
before insert or update on web_user_site_info
for each row
begin
  :new.email_uc := upper(:new.email);
  :new.modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."WEB_USER_SI_TIMESTAMP" ENABLE
/

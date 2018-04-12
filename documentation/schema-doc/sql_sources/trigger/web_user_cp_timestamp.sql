-- created by Oraschemadoc Wed Apr 11 12:22:56 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."WEB_USER_CP_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON web_user_contact_permission
FOR EACH ROW
BEGIN
  :new.modified := current_timestamp;
END;
ALTER TRIGGER "SPACEUSER"."WEB_USER_CP_TIMESTAMP" ENABLE
/

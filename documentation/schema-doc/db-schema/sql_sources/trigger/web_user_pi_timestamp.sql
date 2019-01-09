-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."WEB_USER_PI_TIMESTAMP"
BEFORE INSERT OR UPDATE ON web_user_personal_info
FOR EACH ROW
BEGIN
  :new.modified := current_timestamp;
END;
/
ALTER TRIGGER "SPACEUSER"."WEB_USER_PI_TIMESTAMP" ENABLE;

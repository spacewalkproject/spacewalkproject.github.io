-- created by Oraschemadoc Wed Apr 11 12:22:56 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."WEB_CUSTOMER_MOD_TRIG" 
before insert or update on web_customer
for each row
begin
        :new.modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."WEB_CUSTOMER_MOD_TRIG" ENABLE
/

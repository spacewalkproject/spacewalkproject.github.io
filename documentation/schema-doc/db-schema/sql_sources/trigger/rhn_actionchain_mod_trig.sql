-- created by Oraschemadoc Wed Jan  9 15:07:24 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_ACTIONCHAIN_MOD_TRIG"
    BEFORE INSERT OR UPDATE ON rhnActionChain
    FOR EACH ROW
    BEGIN
        :new.modified := sysdate;
    END;
/
ALTER TRIGGER "SPACEUSER"."RHN_ACTIONCHAIN_MOD_TRIG" ENABLE;

-- created by Oraschemadoc Wed Mar  4 07:58:16 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_ACTIONCHAIN_MOD_TRIG" 
    BEFORE INSERT OR UPDATE ON rhnActionChain
    FOR EACH ROW
    BEGIN
        :new.modified := sysdate;
    END;
ALTER TRIGGER "SPACEUSER"."RHN_ACTIONCHAIN_MOD_TRIG" ENABLE
/

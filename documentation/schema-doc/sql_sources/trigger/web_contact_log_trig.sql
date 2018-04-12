-- created by Oraschemadoc Wed Apr 11 12:22:56 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."WEB_CONTACT_LOG_TRIG" 
            after insert or update or delete on web_contact
            for each row
            declare
                log_id_v number;
                tg_op char(1);
            begin
                log_id_v := logging.get_log_id();
                if updating then
                    if :old.ID <> :new.ID then raise_application_error(-20298, 'Cannot update column web_contact.ID.'); end if;
                    tg_op := 'U';
                end if;
                if deleting then
                        tg_op := 'D';
                    insert into web_contact_log (log_id, action, ID, ORG_ID, LOGIN, LOGIN_UC, PASSWORD, ORACLE_CONTACT_ID, IGNORE_FLAG, READ_ONLY)
                    values (log_id_v, substr(tg_op, 1, 1), :old.ID, :old.ORG_ID, :old.LOGIN, :old.LOGIN_UC, :old.PASSWORD, :old.ORACLE_CONTACT_ID, :old.IGNORE_FLAG, :old.READ_ONLY);
                else
                    if inserting then tg_op := 'I'; end if;
                    insert into web_contact_log (log_id, action, ID, ORG_ID, LOGIN, LOGIN_UC, PASSWORD, ORACLE_CONTACT_ID, IGNORE_FLAG, READ_ONLY)
                    values (log_id_v, substr(tg_op, 1, 1), :new.ID, :new.ORG_ID, :new.LOGIN, :new.LOGIN_UC, :new.PASSWORD, :new.ORACLE_CONTACT_ID, :new.IGNORE_FLAG, :new.READ_ONLY);
                end if;
            end;
            
ALTER TRIGGER "SPACEUSER"."WEB_CONTACT_LOG_TRIG" ENABLE
/

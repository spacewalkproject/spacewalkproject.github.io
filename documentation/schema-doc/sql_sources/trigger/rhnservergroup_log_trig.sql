-- created by Oraschemadoc Wed Apr 11 12:22:53 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHNSERVERGROUP_LOG_TRIG" 
            after insert or update or delete on rhnservergroup
            for each row
            declare
                log_id_v number;
                tg_op char(1);
            begin
                log_id_v := logging.get_log_id();
                if updating then
                    if :old.ID <> :new.ID then raise_application_error(-20298, 'Cannot update column rhnservergroup.ID.'); end if;
                    tg_op := 'U';
                end if;
                if deleting then
                        tg_op := 'D';
                    insert into rhnservergroup_log (log_id, action, ID, NAME, DESCRIPTION, CURRENT_MEMBERS, GROUP_TYPE, ORG_ID)
                    values (log_id_v, substr(tg_op, 1, 1), :old.ID, :old.NAME, :old.DESCRIPTION, :old.CURRENT_MEMBERS, :old.GROUP_TYPE, :old.ORG_ID);
                else
                    if inserting then tg_op := 'I'; end if;
                    insert into rhnservergroup_log (log_id, action, ID, NAME, DESCRIPTION, CURRENT_MEMBERS, GROUP_TYPE, ORG_ID)
                    values (log_id_v, substr(tg_op, 1, 1), :new.ID, :new.NAME, :new.DESCRIPTION, :new.CURRENT_MEMBERS, :new.GROUP_TYPE, :new.ORG_ID);
                end if;
            end;
            
ALTER TRIGGER "SPACEUSER"."RHNSERVERGROUP_LOG_TRIG" ENABLE
/

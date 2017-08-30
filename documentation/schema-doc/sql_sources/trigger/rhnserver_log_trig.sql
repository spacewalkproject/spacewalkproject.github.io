-- created by Oraschemadoc Wed Aug 30 22:57:44 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHNSERVER_LOG_TRIG" 
            after insert or update or delete on rhnserver
            for each row
            declare
                log_id_v number;
                tg_op char(1);
            begin
                log_id_v := logging.get_log_id();
                if updating then
                    if :old.ID <> :new.ID then raise_application_error(-20298, 'Cannot update column rhnserver.ID.'); end if;
                    tg_op := 'U';
                end if;
                if deleting then
                        tg_op := 'D';
                    insert into rhnserver_log (log_id, action, ID, ORG_ID, DIGITAL_SERVER_ID, SERVER_ARCH_ID, OS, RELEASE, NAME, DESCRIPTION, INFO, SECRET, CREATOR_ID, AUTO_UPDATE, RUNNING_KERNEL, LAST_BOOT, PROVISION_STATE_ID, CHANNELS_CHANGED, COBBLER_ID)
                    values (log_id_v, substr(tg_op, 1, 1), :old.ID, :old.ORG_ID, :old.DIGITAL_SERVER_ID, :old.SERVER_ARCH_ID, :old.OS, :old.RELEASE, :old.NAME, :old.DESCRIPTION, :old.INFO, :old.SECRET, :old.CREATOR_ID, :old.AUTO_UPDATE, :old.RUNNING_KERNEL, :old.LAST_BOOT, :old.PROVISION_STATE_ID, :old.CHANNELS_CHANGED, :old.COBBLER_ID);
                else
                    if inserting then tg_op := 'I'; end if;
                    insert into rhnserver_log (log_id, action, ID, ORG_ID, DIGITAL_SERVER_ID, SERVER_ARCH_ID, OS, RELEASE, NAME, DESCRIPTION, INFO, SECRET, CREATOR_ID, AUTO_UPDATE, RUNNING_KERNEL, LAST_BOOT, PROVISION_STATE_ID, CHANNELS_CHANGED, COBBLER_ID)
                    values (log_id_v, substr(tg_op, 1, 1), :new.ID, :new.ORG_ID, :new.DIGITAL_SERVER_ID, :new.SERVER_ARCH_ID, :new.OS, :new.RELEASE, :new.NAME, :new.DESCRIPTION, :new.INFO, :new.SECRET, :new.CREATOR_ID, :new.AUTO_UPDATE, :new.RUNNING_KERNEL, :new.LAST_BOOT, :new.PROVISION_STATE_ID, :new.CHANNELS_CHANGED, :new.COBBLER_ID);
                end if;
            end;
            
ALTER TRIGGER "SPACEUSER"."RHNSERVER_LOG_TRIG" ENABLE
/

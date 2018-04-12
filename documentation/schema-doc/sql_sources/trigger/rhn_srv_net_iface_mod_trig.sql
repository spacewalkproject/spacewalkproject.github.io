-- created by Oraschemadoc Wed Apr 11 12:22:56 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_SRV_NET_IFACE_MOD_TRIG" 
before insert or update on rhnServerNetInterface
for each row
begin
        if :new.id is null then
			select rhn_srv_net_iface_id_seq.nextval into :new.id from dual;
		end if;
        :new.modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."RHN_SRV_NET_IFACE_MOD_TRIG" ENABLE
/

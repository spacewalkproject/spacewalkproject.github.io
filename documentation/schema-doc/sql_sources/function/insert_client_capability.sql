-- created by Oraschemadoc Wed Apr 11 12:22:57 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."INSERT_CLIENT_CAPABILITY" (name_in varchar2)
return number
is
    pragma autonomous_transaction;
    cap_name_id     number;
begin
    insert into rhnClientCapabilityName (id, name)
    values (rhn_client_capname_id_seq.nextval, name_in) returning id into cap_name_id;

    commit;
    return cap_name_id;
end;
/

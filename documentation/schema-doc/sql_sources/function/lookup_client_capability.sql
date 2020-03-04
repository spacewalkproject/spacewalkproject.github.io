-- created by Oraschemadoc Wed Mar  4 07:58:19 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_CLIENT_CAPABILITY" (name_in in varchar2)
return number
is
    cap_name_id		number;
begin
    select id
      into cap_name_id
      from rhnClientCapabilityName
     where name = name_in;

    return cap_name_id;
exception when no_data_found then
    begin
        select insert_client_capability(name_in) into cap_name_id from dual;
    exception when dup_val_on_index then
        select id
          into cap_name_id
          from rhnClientCapabilityName
         where name = name_in;
    end;
	return cap_name_id;
end;
/

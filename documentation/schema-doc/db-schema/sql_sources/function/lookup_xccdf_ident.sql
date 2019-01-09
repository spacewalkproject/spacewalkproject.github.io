-- created by Oraschemadoc Wed Jan  9 15:07:27 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_XCCDF_IDENT" (system_in in varchar2, identifier_in in varchar2)
return number
is
    pragma autonomous_transaction;
    xccdf_ident_id number;
    ident_sys_id number;
begin
    begin
        select id
          into ident_sys_id
          from rhnXccdfIdentSystem
         where system = system_in;
    exception when no_data_found then
        begin
            ident_sys_id := insert_xccdf_ident_system(system_in);
        exception when dup_val_on_index then
            select id
              into ident_sys_id
              from rhnXccdfIdentSystem
             where system = system_in;
        end;
    end;

    select id
      into xccdf_ident_id
      from rhnXccdfIdent
     where identsystem_id = ident_sys_id and identifier = identifier_in;
    return xccdf_ident_id;
exception when no_data_found then
    begin
        xccdf_ident_id := insert_xccdf_ident(ident_sys_id, identifier_in);
    exception when dup_val_on_index then
        select id
          into xccdf_ident_id
          from rhnXccdfIdent
         where identsystem_id = ident_sys_id and identifier = identifier_in;
    end;
    return xccdf_ident_id;
end lookup_xccdf_ident;
/

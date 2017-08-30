-- created by Oraschemadoc Wed Aug 30 22:57:49 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."INSERT_XCCDF_IDENT" (ident_sys_id number, identifier_in in varchar2)
return number
is
    pragma autonomous_transaction;
    xccdf_ident_id  number;
begin
    insert into rhnXccdfIdent (id, identsystem_id, identifier)
    values (rhn_xccdf_ident_id_seq.nextval, ident_sys_id, identifier_in) returning id into xccdf_ident_id;
    commit;
    return xccdf_ident_id;
end;
/

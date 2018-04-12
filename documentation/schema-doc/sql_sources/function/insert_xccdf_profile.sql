-- created by Oraschemadoc Wed Apr 11 12:22:57 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."INSERT_XCCDF_PROFILE" (identifier_in in varchar2, title_in in varchar2)
return number
is
    pragma autonomous_transaction;
    profile_id  number;
begin
    insert into rhnXccdfProfile (id, identifier, title)
    values (rhn_xccdf_profile_id_seq.nextval, identifier_in, title_in) returning id into profile_id;
    commit;
    return profile_id;
end;
/

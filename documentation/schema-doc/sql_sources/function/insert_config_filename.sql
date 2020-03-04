-- created by Oraschemadoc Wed Mar  4 07:58:19 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."INSERT_CONFIG_FILENAME" (name_in in varchar2)
return number
is
    pragma autonomous_transaction;
    name_id number;
begin
    insert into rhnConfigFileName (id, path)
    values (rhn_cfname_id_seq.nextval, name_in) returning id into name_id;
    commit;

    return name_id;
end;
/

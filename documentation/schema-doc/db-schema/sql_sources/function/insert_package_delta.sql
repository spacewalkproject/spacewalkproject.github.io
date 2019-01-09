-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."INSERT_PACKAGE_DELTA" (n_in in varchar2)
return number
is
    pragma autonomous_transaction;
    name_id     number;
begin
    insert into rhnPackageDelta(id, label)
    values (rhn_packagedelta_id_seq.nextval, n_in) returning id into name_id;
    commit;
    return name_id;
end;
/

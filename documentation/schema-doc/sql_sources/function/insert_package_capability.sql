-- created by Oraschemadoc Wed Apr 11 12:22:57 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."INSERT_PACKAGE_CAPABILITY" (name_in in varchar2, version_in in varchar2 default null)
return number
is
    pragma autonomous_transaction;
    name_id number;
begin
    insert into rhnPackageCapability (id, name, version)
        values (rhn_pkg_capability_id_seq.nextval, name_in, version_in) returning id into name_id;
    commit;
    return name_id;
end;
/

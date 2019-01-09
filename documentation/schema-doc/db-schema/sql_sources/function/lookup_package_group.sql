-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_PACKAGE_GROUP" (name_in in varchar2)
return number
is
    package_id   number;
begin
    select id
      into package_id
      from rhnPackageGroup
     where name = name_in;

    return package_id;
exception when no_data_found then
    begin
        package_id := insert_package_group(name_in);
    exception when dup_val_on_index then
        select id
          into package_id
          from rhnPackageGroup
         where name = name_in;
    end;
    return package_id;
end;
/

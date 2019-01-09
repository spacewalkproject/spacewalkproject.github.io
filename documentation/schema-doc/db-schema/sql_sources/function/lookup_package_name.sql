-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_PACKAGE_NAME" (name_in in varchar2, ignore_null in number := 0)
return number
is
    name_id		number;
begin
    if ignore_null = 1 and name_in is null then
        return null;
    end if;

    select id
      into name_id
      from rhnPackageName
     where name = name_in;

    return name_id;
exception when no_data_found then
    begin
        name_id := insert_package_name(name_in);
    exception when dup_val_on_index then
        select id
          into name_id
          from rhnPackageName
         where name = name_in;
    end;
    return name_id;
end;
/

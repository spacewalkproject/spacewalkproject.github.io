-- created by Oraschemadoc Wed Apr 11 12:22:57 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_CVE" (name_in in varchar2)
return number
is
    name_id		number;
begin
    select id
      into name_id
      from rhnCVE
     where name = name_in;

    return name_id;
exception when no_data_found then
    begin
        name_id := insert_cve(name_in);
    exception when dup_val_on_index then
        select id
          into name_id
          from rhnCVE
         where name = name_in;
    end;
    return name_id;
end;
/

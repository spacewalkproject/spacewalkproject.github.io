-- created by Oraschemadoc Wed Apr 11 12:22:58 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_SOURCE_NAME" (name_in in varchar2)
return number
is
    source_id   number;
begin
    select id
      into source_id
      from rhnSourceRPM
     where name = name_in;

    return source_id;
exception when no_data_found then
    begin
        source_id := insert_source_name(name_in);
    exception when dup_val_on_index then
        select id
          into source_id
          from rhnSourceRPM
         where name = name_in;
    end;
    return source_id;
end;
/

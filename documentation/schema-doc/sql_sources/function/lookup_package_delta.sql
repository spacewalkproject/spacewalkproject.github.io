-- created by Oraschemadoc Wed Apr 11 12:22:57 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_PACKAGE_DELTA" (n_in in varchar2)
return number
is
	name_id         number;
begin
    select id
      into name_id
      from rhnpackagedelta
     where label = n_in;

	return name_id;
exception when no_data_found then
    begin
        name_id := insert_package_delta(n_in);
    exception when dup_val_on_index then
        select id
          into name_id
          from rhnPackageDelta
         where label = n_in;
    end;
	return name_id;
end;
/

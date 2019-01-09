-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_SNAPSHOT_INVALID_REASON" (label_in in varchar2)
return number
is
	snapshot_invalid_reason_id number;
begin
    select id
      into snapshot_invalid_reason_id
      from rhnsnapshotinvalidreason
     where label = label_in;

    return snapshot_invalid_reason_id;
exception when no_data_found then
    rhn_exception.raise_exception('invalid_snapshot_invalid_reason');
end;
/

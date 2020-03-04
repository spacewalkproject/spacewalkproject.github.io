-- created by Oraschemadoc Wed Mar  4 07:58:19 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."EPOCH_SECONDS_TO_TIMESTAMP_TZ" (secs in number)
return timestamp with local time zone
is
begin
	return to_timestamp_tz('1970-01-01 00:00:00 UTC', 'YYYY-MM-DD HH24:MI:SS TZR') + numtodsinterval(secs, 'second');
end;
/

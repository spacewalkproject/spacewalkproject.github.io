-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."DATE_DIFF_IN_DAYS" (ts1 in timestamp with local time zone, ts2 in timestamp with time zone)
return number is
    difference interval day(9) to second(6);
begin
    difference := ts2 - ts1;
    return extract(day from difference)
        + extract(hour from difference) / 24
        + extract(minute from difference) / (24 * 60)
        + extract(second from difference) / (24 * 60 * 60);
end date_diff_in_days;
/

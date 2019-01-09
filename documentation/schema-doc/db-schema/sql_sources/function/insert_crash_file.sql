-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."INSERT_CRASH_FILE" (
    crash_id_in in number,
    filename_in in varchar2,
    path_in in varchar2,
    filesize_in in number)
return number
is
    crash_file_id number;
begin
    insert into rhnServerCrashFile (id, crash_id, filename, path, filesize)
    values (sequence_nextval('rhn_server_crash_file_id_seq'), crash_id_in, filename_in, path_in, filesize_in)
    returning id into crash_file_id;

    return crash_file_id;
exception when dup_val_on_index then
    select id
      into crash_file_id
      from rhnServerCrashFile
     where crash_id = crash_id_in and
           filename = filename_in;

    update rhnServerCrashFile
       set path = path_in,
           filesize = filesize_in
     where id = crash_file_id;

    return crash_id_in;
end;
/

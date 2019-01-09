-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE PROCEDURE "SPACEUSER"."DELETE_SERVER_BULK" (
	user_id_in in number
) is
	cursor systems is
		select	s.element id
		from	rhnSet s
		where	s.user_id = user_id_in
			and s.label = 'system_list';
begin
	for s in systems loop
                delete_server(s.id);
	end loop;
end delete_server_bulk;
/

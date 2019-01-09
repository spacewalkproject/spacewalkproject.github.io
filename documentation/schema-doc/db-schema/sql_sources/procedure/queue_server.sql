-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE PROCEDURE "SPACEUSER"."QUEUE_SERVER" (server_id_in IN NUMBER, immediate_in IN NUMBER := 1)
IS
    org_id_tmp NUMBER;
BEGIN
    IF immediate_in > 0
    THEN
          rhn_server.update_needed_cache(server_id_in);
    ELSE
          SELECT org_id INTO org_id_tmp FROM rhnServer WHERE id = server_id_in;

	  INSERT
            INTO rhnTaskQueue
                 (org_id, task_name, task_data)
          SELECT org_id_tmp,
                 'update_server_errata_cache',
                 server_id_in
          FROM DUAL
          WHERE NOT EXISTS
            (SELECT 1 FROM rhnTaskQueue
               WHERE org_id = org_id_tmp
               AND task_name = 'update_server_errata_cache'
               AND task_data = server_id_in
            );
    END IF;
END queue_server;
/

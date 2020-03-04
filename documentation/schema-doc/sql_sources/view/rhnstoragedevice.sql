-- created by Oraschemadoc Wed Mar  4 07:58:14 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSTORAGEDEVICE" ("ID", "SERVER_ID", "CLASS", "BUS", "DETACHED", "DEVICE", "DRIVER", "DESCRIPTION", "PHYSICAL", "LOGICAL", "PCITYPE") AS 
  select
	d.id,
	d.server_Id,
	d.class,
	d.bus,
	d.detached,
	d.device,
	d.driver,
	d.description,
	d.prop1,
	d.prop2,
	d.pcitype
from rhnDevice d
where d.class in ('HD', 'FLOPPY')
/

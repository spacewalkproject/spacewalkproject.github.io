-- created by Oraschemadoc Wed Mar  4 07:58:15 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNUSERCHANNELFAMILYPERMS" ("CHANNEL_FAMILY_ID", "ORG_ID", "USER_ID", "CREATED", "MODIFIED") AS 
  select	pcf.channel_family_id,
		u.org_id as org_id,
		u.id as user_id,
		pcf.created,
		pcf.modified
	from	rhnPublicChannelFamily pcf,
		web_contact u
	union
	select	pcf.channel_family_id,
		u.org_id,
		u.id as user_id,
		pcf.created,
		pcf.modified
	from	rhnPrivateChannelFamily pcf,
		web_contact u
	where	u.org_id = pcf.org_id
/

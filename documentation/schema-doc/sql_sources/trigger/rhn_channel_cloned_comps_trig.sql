-- created by Oraschemadoc Wed Apr 11 12:22:53 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_CHANNEL_CLONED_COMPS_TRIG" 
before insert or update on rhnChannelCloned
for each row
begin
	:new.modified := current_timestamp;

	if inserting then
		-- if there are not comps in the cloned channel by now,
		-- we shall clone comps from the original channel
		insert into rhnChannelComps
			( id, channel_id, relative_filename,
				last_modified, created, modified )
		select rhn_channelcomps_id_seq.nextval, :new.id, relative_filename,
				current_timestamp, current_timestamp, current_timestamp
		from rhnChannelComps
		where channel_id = :new.original_id
			and not exists (
				select 1
				from rhnChannelComps x
				where x.channel_id = :new.id
			);
	end if;
end;
ALTER TRIGGER "SPACEUSER"."RHN_CHANNEL_CLONED_COMPS_TRIG" ENABLE
/

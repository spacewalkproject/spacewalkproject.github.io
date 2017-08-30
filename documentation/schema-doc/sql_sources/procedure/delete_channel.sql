-- created by Oraschemadoc Wed Aug 30 22:57:48 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE PROCEDURE "SPACEUSER"."DELETE_CHANNEL" (
	channel_id_in in number
) is
begin
        delete from rhnChannelPackage where channel_id = channel_id_in;
        delete from rhnChannelErrata where channel_id = channel_id_in;
        delete from rhnServerChannel where channel_id = channel_id_in;
        delete from rhnRegTokenChannels where channel_id = channel_id_in;
        delete from rhnDistChannelMap where channel_id = channel_id_in;
        delete from rhnChannelFamilyMembers where channel_id = channel_id_in;
        delete from rhnServerProfilePackage where server_profile_id in (
            select id from rhnServerProfile where base_channel = channel_id_in
        );
        delete from rhnServerProfile where base_channel = channel_id_in;
        delete from rhnChannel where id = channel_id_in;
end;
/

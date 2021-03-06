-- created by Oraschemadoc Wed Jan  9 15:07:03 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNPUSHCLIENT"
   (	"ID" NUMBER NOT NULL ENABLE,
	"NAME" VARCHAR2(64) NOT NULL ENABLE,
	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"JABBER_ID" VARCHAR2(128),
	"SHARED_KEY" VARCHAR2(64) NOT NULL ENABLE,
	"STATE_ID" NUMBER NOT NULL ENABLE,
	"NEXT_ACTION_TIME" TIMESTAMP (6) WITH LOCAL TIME ZONE,
	"LAST_MESSAGE_TIME" TIMESTAMP (6) WITH LOCAL TIME ZONE,
	"LAST_PING_TIME" TIMESTAMP (6) WITH LOCAL TIME ZONE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNPUSHCLIENT" ADD CONSTRAINT "RHN_PCLIENT_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNPUSHCLIENT" ADD FOREIGN KEY ("STATE_ID")
	  REFERENCES "SPACEUSER"."RHNPUSHCLIENTSTATE" ("ID") ENABLE;

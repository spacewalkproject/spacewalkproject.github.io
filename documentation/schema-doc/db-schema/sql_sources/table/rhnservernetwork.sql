-- created by Oraschemadoc Wed Jan  9 15:07:05 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERNETWORK"
   (	"ID" NUMBER NOT NULL ENABLE,
	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"HOSTNAME" VARCHAR2(128),
	"IPADDR" VARCHAR2(16),
	"IP6ADDR" VARCHAR2(45),
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSERVERNETWORK" ADD CONSTRAINT "RHN_SERVERNETWORK_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERNETWORK" ADD CONSTRAINT "RHN_SERVERNETWORK_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;

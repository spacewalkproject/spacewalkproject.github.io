-- created by Oraschemadoc Wed Jan  9 15:07:05 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERNETINTERFACE"
   (	"ID" NUMBER NOT NULL ENABLE,
	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"NAME" VARCHAR2(32) NOT NULL ENABLE,
	"HW_ADDR" VARCHAR2(18),
	"MODULE" VARCHAR2(128),
	"IS_PRIMARY" VARCHAR2(1),
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSERVERNETINTERFACE" ADD CONSTRAINT "RHN_SRV_NET_IFACE_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERNETINTERFACE" ADD CONSTRAINT "RHN_SRV_NET_IFACE_SID_NAME_UQ" UNIQUE ("SERVER_ID", "NAME") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERNETINTERFACE" ADD CONSTRAINT "RHN_SRV_NET_IFACE_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;

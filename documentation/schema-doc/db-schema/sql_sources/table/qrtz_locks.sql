-- created by Oraschemadoc Wed Jan  9 15:06:52 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."QRTZ_LOCKS"
   (	"LOCK_NAME" VARCHAR2(40) NOT NULL ENABLE
   ) ;
  ALTER TABLE "SPACEUSER"."QRTZ_LOCKS" ADD PRIMARY KEY ("LOCK_NAME") ENABLE;

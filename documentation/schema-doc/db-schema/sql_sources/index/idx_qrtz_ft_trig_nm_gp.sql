-- created by Oraschemadoc Wed Jan  9 15:07:10 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE INDEX "SPACEUSER"."IDX_QRTZ_FT_TRIG_NM_GP" ON "SPACEUSER"."QRTZ_FIRED_TRIGGERS" ("TRIGGER_NAME", "TRIGGER_GROUP")
  ;

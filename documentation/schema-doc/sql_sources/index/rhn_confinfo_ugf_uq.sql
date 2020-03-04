-- created by Oraschemadoc Wed Mar  4 07:57:54 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "SPACEUSER"."RHN_CONFINFO_UGF_UQ" ON "SPACEUSER"."RHNCONFIGINFO" ("USERNAME", "GROUPNAME", "FILEMODE", "SELINUX_CTX", "SYMLINK_TARGET_FILENAME_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
/

-- created by Oraschemadoc Wed Jan  9 15:07:13 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "SPACEUSER"."RHN_CONFINFO_UGF_UQ" ON "SPACEUSER"."RHNCONFIGINFO" ("USERNAME", "GROUPNAME", "FILEMODE", "SELINUX_CTX", "SYMLINK_TARGET_FILENAME_ID")
  ;

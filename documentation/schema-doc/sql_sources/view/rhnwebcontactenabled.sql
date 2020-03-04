-- created by Oraschemadoc Wed Mar  4 07:58:15 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNWEBCONTACTENABLED" ("ID", "ORG_ID", "LOGIN", "LOGIN_UC", "PASSWORD", "ORACLE_CONTACT_ID", "CREATED", "MODIFIED", "IGNORE_FLAG", "READ_ONLY") AS 
  select
   wcon.id,
   wcon.org_id,
   wcon.login,
   wcon.login_uc,
   wcon.password,
   wcon.oracle_contact_id,
   wcon.created,
   wcon.modified,
   wcon.ignore_flag,
   wcon.read_only
from
   web_contact wcon left join rhnWebContactDisabled wcond on wcond.id = wcon.id
   where wcond.id is null
/

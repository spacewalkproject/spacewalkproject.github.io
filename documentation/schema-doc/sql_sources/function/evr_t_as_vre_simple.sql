-- created by Oraschemadoc Wed Apr 11 12:22:57 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."EVR_T_AS_VRE_SIMPLE" ( a evr_t )
  return VARCHAR2
is
begin
    return a.as_vre_simple;
end;
/

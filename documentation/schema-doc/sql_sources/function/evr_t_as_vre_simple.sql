-- created by Oraschemadoc Wed Mar  4 07:58:19 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."EVR_T_AS_VRE_SIMPLE" ( a evr_t )
  return VARCHAR2
is
begin
    return a.as_vre_simple;
end;
/

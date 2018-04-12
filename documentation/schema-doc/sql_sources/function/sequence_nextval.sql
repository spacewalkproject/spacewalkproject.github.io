-- created by Oraschemadoc Wed Apr 11 12:22:58 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."SEQUENCE_NEXTVAL" ( seq_name varchar2 ) return number as
	ret number;
begin
	execute immediate 'select '|| seq_name || '.nextval from dual'
		into ret;
	return ret;
end;
/

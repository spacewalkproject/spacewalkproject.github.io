-- created by Oraschemadoc Wed Jan  9 15:07:22 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."ALL_PRIMARY_KEYS" ("TABLE_NAME", "CONSTRAINT_NAME", "COLUMN_NAME") AS
  select
       ac.table_name,
       ac.constraint_name,
       acc.column_name
  from all_constraints ac
  join all_cons_columns acc
    on ac.constraint_name = acc.constraint_name
   and ac.owner = acc.owner
 where ac.constraint_type = 'P';

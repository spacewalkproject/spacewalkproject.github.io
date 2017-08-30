-- created by Oraschemadoc Wed Aug 30 22:57:49 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."INSERT_TRANSACTION_PACKAGE" (
    o_id in number,
    n_id in number,
    e_id in number,
    p_arch_id in number)
return number
is
    pragma autonomous_transaction;
    tp_id   number;
begin
    insert into rhnTransactionPackage (id, operation, name_id, evr_id, package_arch_id)
    values (rhn_transpack_id_seq.nextval, o_id, n_id, e_id, p_arch_id) returning id into tp_id;
    commit;
    return tp_id;
end;
/

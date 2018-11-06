col table_name format a20
col owner format a20
col privilege format a20
select table_name,owner,privilege from dba_col_privs 
;

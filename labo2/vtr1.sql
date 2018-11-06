col grantee format a10
col owner format a7
col table_name format a8
col grantor format a8
col privilege format a18
col type format a6
select * from dba_tab_privs ;
--select * from dba_tab_privs where privilege = 'DELETE' and
--grantor = 'SYSTEM';
clear columns

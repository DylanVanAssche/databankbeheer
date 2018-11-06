col grantee format a8
col owner format a5
col table_name format a13
col grantor format a7
col privilege format a22
col type format a7
--select grantee,owner,table_name,grantor,privilege,type from user_tab_privs;
select grantee,owner,table_name,grantor,privilege,type from user_tab_privs
  where type='TABLE';

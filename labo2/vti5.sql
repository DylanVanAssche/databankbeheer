set pagesize 80
col owner format a6
col constraint_name format a16
col table_name format a11
col r_owner format a10
select owner,constraint_name,constraint_type,table_name,r_owner
 from user_constraints;
clear columns
set pagesize 20

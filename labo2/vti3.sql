set pagesize 30
col tablespace_name format a15
select * from dba_tablespaces where tablespace_name ='E400';
clear columns
set pagesize 20

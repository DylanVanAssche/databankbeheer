col program format a45
col username format a4
col process format a14
select sid,username,program,process from v$session;
clear columns

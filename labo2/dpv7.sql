select 'TABLE' as type,count(*) as aantal from v$fixed_table where type = 'TABLE'
union
select 'VIEW' as type,count(*) as aantal from v$fixed_table where type = 'VIEW'
;

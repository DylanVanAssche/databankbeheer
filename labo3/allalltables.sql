col table_name format A11
col blocks heading aant_gebr_blok format 9999
select table_name,blocks,num_rows,to_char( last_analyzed,'HH24:MI//DD/MM/YYYY')
as geanaliseerd_op from all_all_tables
where tablespace_name = 'E402';

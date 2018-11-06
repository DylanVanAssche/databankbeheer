col index_name format a25
col table_name format a15
select index_name,table_name,blevel,leaf_blocks from user_indexes;
clear columns

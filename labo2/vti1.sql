col table_name format a14
select table_name,blocks,num_rows,avg_row_len,
to_char(last_analyzed,'DD/MM//HH24:MI') as analyzed
from
user_tables;

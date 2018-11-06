set pagesize 20
col segment_name format A16
col tablespace_name format A5
col initial_extent heading initial format 99999
--col next_extent heading next format 99999
col min_extents heading min format 999999
col max_extents heading max format 9999999999
--col pct_increase heading p_incr format 999999
select segment_name,tablespace_name,extents,blocks,
initial_extent, min_extents,max_extents
from user_segments
/

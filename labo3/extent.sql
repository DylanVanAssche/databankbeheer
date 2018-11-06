col segment_name format A13
col segment_type heading type format A11
col tablespace_name format A10
select segment_name,segment_type,tablespace_name,bytes,blocks,extent_id
 from user_extents
/

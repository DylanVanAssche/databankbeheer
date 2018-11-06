col object_name format A27
col object_id heading object_id format 999999
col object_type format A7
col created format A8
col status format A6
col namespace format 9999
select object_name,object_id,object_type,created,status,namespace
 from user_objects
/

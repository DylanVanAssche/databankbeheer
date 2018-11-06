-- Name :	Name of the object
-- Object_id :Identifier of the fixed object
-- Type :Object type (TABLE | VIEW)
-- Table_num:Number that identifies the dynamic performance table if it 
-- is of type TABLE
select * from v$fixed_table where name = 'X$TIMEZONE_NAMES' 
union
select * from v$fixed_table where name = 'V$SGA' 
;

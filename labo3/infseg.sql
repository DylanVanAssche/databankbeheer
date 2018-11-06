set serveroutput on
declare
	v_owner VARCHAR(30) := 'E402';
	v_segment_name VARCHAR(30) := 'E_PERSOON';
	v_segment_type VARCHAR(30) := 'TABLE';
	v_total_blocks NUMBER;
	v_total_bytes NUMBER;
	v_unused_blocks NUMBER;
	v_unused_bytes NUMBER;
	v_last_used_extent_file_id NUMBER;
	v_last_used_extent_block_id NUMBER;
	v_last_used_block NUMBER;
begin
	DBMS_SPACE.unused_space( v_owner,
			v_segment_name,
			v_segment_type,
			v_total_blocks,
			v_total_bytes,
			v_unused_blocks,
			v_unused_bytes,
			v_last_used_extent_file_id,
			v_last_used_extent_block_id,
			v_last_used_block ) ;
	dbms_output.put_line( v_segment_type || ' : ' || v_owner || '.' || v_segment_name);
	dbms_output.put('total_blocks  : ' || v_total_blocks);
	dbms_output.put(' (bytes: ' || v_total_bytes || ')' );
	dbms_output.put('    unused_blocks : ' || v_unused_blocks);
	dbms_output.put_line(' (bytes : ' || v_unused_bytes || ')' );
	dbms_output.put('extent_file_id : ' || v_last_used_extent_file_id);
	dbms_output.put('   v_last_used_extent_block_id : ' || to_char(v_last_used_extent_block_id));
	dbms_output.put_line('   v_last_used_block : ' || v_last_used_block);
end;
/

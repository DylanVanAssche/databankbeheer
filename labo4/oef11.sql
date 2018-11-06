-- DROP TABLE fiche PURGE;

CREATE OR REPLACE PROCEDURE oef11(gegevenWoord IN varchar2) IS
	CURSOR appel IS SELECT fid, finh FROM fiche WHERE CONTAINS(finh, gegevenWoord, 1) > 0;
	
BEGIN
	dbms_output.put_line('Zoeken op:');
	dbms_output.put_line(gegevenWoord);
	FOR x IN appel LOOP
		dbms_output.put_line(x.fid);
		dbms_output.put_line(x.finh);
		dbms_output.put_line('---------------------------------------');
	END LOOP;
END;
/

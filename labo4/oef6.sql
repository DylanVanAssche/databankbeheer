CREATE OR REPLACE PROCEDURE oef6(dafk IN theorie.tdafk%TYPE) IS
	CURSOR appel IS SELECT * FROM theorie, activiteit 
	WHERE (theorie.tdafk = dafk AND activiteit.aid = theorie.taid);
BEGIN
	FOR x IN appel LOOP
		dbms_output.put_line(x.anaam);
	END LOOP;
END;
/

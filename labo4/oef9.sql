CREATE OR REPLACE PROCEDURE oef9(bafski IN basisact.bafk%TYPE, sommeke OUT integer) IS
	CURSOR appel IS SELECT activiteit.ascu AS ascu FROM activiteit, basisact 
	WHERE(activiteit.aid = basisact.aid AND basisact.bafk = bafski)
	UNION ALL
	SELECT activiteit.ascu AS ascu FROM activiteit, minoract
	WHERE(activiteit.aid = minoract.aid AND minoract.bafk = bafski);
BEGIN
	sommeke := 0;
	FOR x IN appel LOOP
		sommeke := sommeke + x.ascu;
	END LOOP;
END;
/

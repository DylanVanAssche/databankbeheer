CREATE OR REPLACE PROCEDURE oef7(dafk IN theorie.tdafk%TYPE) IS
	CURSOR appel IS SELECT bnaam FROM basis, basisact, activiteit, theorie 
	WHERE(basis.bafk = basisact.bafk AND basisact.aid = activiteit.aid 
	AND theorie.taid = activiteit.aid AND theorie.tdafk = dafk)
	UNION
	SELECT mnaam FROM minor, minoract, activiteit, theorie 
	WHERE(minor.mafk = minoract.mafk AND minoract.aid = activiteit.aid 
	AND theorie.taid = activiteit.aid AND theorie.tdafk = dafk)
	AND minor.bafk = minoract.bafk;

BEGIN
	FOR x IN appel LOOP
		dbms_output.put_line(x.bnaam);
	END LOOP;
END;
/


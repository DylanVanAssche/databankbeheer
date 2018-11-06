--CREATE TABLE appelmans(
--	bafk char(8),
--	ascu int
--	);

CREATE OR REPLACE PROCEDURE oef10(sommeke OUT integer) IS
	CURSOR appel IS SELECT bafk FROM basis;
	tussenDeTwee INTEGER := 0;
	
BEGIN
	sommeke := 0;
	FOR x IN appel LOOP
		oef9(x.bafk, tussenDeTwee);
		sommeke := sommeke + tussenDeTwee;
		INSERT INTO appelmans (bafk, ascu) VALUES (x.bafk, tussenDeTwee);
	END LOOP;
END;
/

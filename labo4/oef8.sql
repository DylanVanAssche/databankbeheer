CREATE OR REPLACE PROCEDURE oef8 IS
	CURSOR appel IS SELECT dafk FROM docent;

BEGIN
	FOR x IN appel LOOP
		oef7(x.dafk);
	END LOOP;
END;
/


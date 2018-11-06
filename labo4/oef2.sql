CREATE OR REPLACE TRIGGER oef2
BEFORE INSERT OR UPDATE ON practica
FOR EACH ROW
DECLARE 
	brol lokaal.lcapa%TYPE;
BEGIN
	SELECT lcapa INTO brol FROM lokaal WHERE lid = :new.plid;
	IF (brol > 20) THEN
		raise_application_error(-20030, 'Niet meer dan 20 AUB');
	END IF;
END;
/

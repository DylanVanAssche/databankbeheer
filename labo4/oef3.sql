CREATE OR REPLACE TRIGGER oef3
BEFORE INSERT OR UPDATE ON groepoefpra
FOR EACH ROW
DECLARE 
	brol integer := 0;
BEGIN
	SELECT SUM(aant) INTO brol FROM groepoefpra WHERE dafk = :new.dafk;
	IF (brol > 10) THEN
		raise_application_error(-20030, 'Docenten hebben een hart van goud, koester ze!');
	ELSIF (brol <= 10 AND (brol + :new.aant) > 10) THEN
		:new.aant := 10-brol; -- max 10 als som, aanpassen van de input
		dbms_output.put_line('Elaba, daar doen we iets vanaf:' || (10-brol));
	END IF;
END;
/

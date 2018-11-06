CREATE OR REPLACE TRIGGER oef1
BEFORE INSERT OR UPDATE ON activiteit
FOR EACH ROW
BEGIN
	IF (to_char(sysdate,'HH24') > 12) THEN
		raise_application_error(-20030, 'Werken niet na 12 u');
	END IF;
END;
/

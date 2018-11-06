CREATE OR REPLACE PROCEDURE komaan IS
BEGIN
	IF(to_char(sysdate,'HH24') < 8 AND to_char(sysdate,'HH24') > 18) THEN
		raise_application_error(-20030, 'Wie werkt er nu zo laat!');
	ELSIF((to_char(sysdate,'DY') = 'SUN') OR (to_char(sysdate,'DY') = 'SAT')) THEN
		raise_application_error(-20031, 'Wie werkt er nu zo in het weekend!');
	ELSE
		dbms_output.put_line('Ja, goed zo!');
	END IF;
END;
/

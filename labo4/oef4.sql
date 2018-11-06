CREATE OR REPLACE FUNCTION lokgr(capa in integer) RETURN integer IS
	appel integer := 0;
BEGIN
	SELECT COUNT(lcapa) INTO appel FROM lokaal WHERE lcapa = capa;
	return appel;
END;
/

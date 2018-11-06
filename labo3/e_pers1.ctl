load data
infile 'e_pers1.dat'
into table e_persoon
when (1)='P'
fields terminated by '\t'
(
	pnr position(3) integer external,
	pgs char,
	pro char,
	pnm char,
	pvn char,
	ppc integer external,
	pwp	char,
	pgb date "DD/MM/YYYY"
)


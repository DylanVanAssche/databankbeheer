load data
infile 'e_pers2.dat'
append
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


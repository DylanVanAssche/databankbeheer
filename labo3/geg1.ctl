load data
infile 'geg1.dat'
into table docent
when (1)='D'
fields terminated by '\t'
(
		dafk position(3) char ,
		dnaam char ,
		dgeslacht char ,
		dgbd date "DD/MM/YYYY"  
)
into table lokaal
when (1)='L'
fields terminated by '\t'
(
		lid  position(3) char ,
		lnaam char ,
		lcapa  integer external ,
		lbeamer char 
)
into table activiteit
when (1)='A'
fields terminated by '\t'
(
		aid   position(3) integer external ,
		anaam  char ,
		ascu  integer external 
)
into table basis
when (1)='B'
fields terminated by '\t'
(
		bafk position(3) char ,
		bnaam char ,
		bfase integer external ,
		bastd integer external ,
		bagrp integer external ,
		bpc char ,
		bsoort char
)

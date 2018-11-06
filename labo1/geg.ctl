load data
infile 'geg.dat'
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
into table fiche
when (1)='F'
fields terminated by '\t'
(
		fid position(3) integer external ,
		fstp  integer external ,
		fslu  integer external
)
into table theorie
when (1)='T'
fields terminated by '\t'
(
		taid position(3) integer external,
		tdafk char 
)
into table oefpra
when (1)='O'
fields terminated by whitespace
(
		oaid position(3) integer external
)
into table groepoefpra
when (1)='G'
fields terminated by '\t'
(
		aid position(3) integer external ,
		dafk char ,
		aant  integer external 
)

into table practica
when (1)='P'
fields terminated by '\t'
(
		paid position(3) integer external,
		plid char ,
		padoc integer	 external
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

into table minor
when (1)='M'
fields terminated by '\t'
(
		bafk position(3) char ,
		mafk char ,
		mnaam char ,
		mfase integer external ,
		mastd integer external ,
		magrp integer external
)

into table basisact
when (1)='I'
fields terminated by '\t'
(
		bafk position(3) char ,
		aid integer external
)

into table minoract
when (1)='N'
fields terminated by '\t'
(
		bafk position(3) char ,
		mafk char,
		aid integer external
)

load data
infile 'jef.dat'
into table jef
when (1)='J'
fields terminated by '\t'
(
	nr position(3) integer external
)

drop table basis purge;
drop table activiteit purge;
drop table docent purge;
drop table lokaal purge;


create table docent(
		dafk char(3),
		dnaam varchar2(20),
		dgeslacht char(1) check ( dgeslacht in ( 'm','v')),
		dgbd date check ( to_char(dgbd,'DD/MM/YYYY') > '01/01/1950'),
		constraint dockey primary key (dafk) );

create table lokaal(
		lid char(5),
		lnaam varchar2(20),
		lcapa integer check ( lcapa between 5 and 400),
		lbeamer char(1) check ( lbeamer in ('j','n')),
		constraint lokkey primary key (lid) );

create table activiteit(
		aid  integer,
		anaam varchar2(20),
		ascu integer check ( ascu between 9 and 36 ),
		constraint actkey primary key (aid) );

create table basis(
		bafk char(8),
		bnaam varchar2(20),
		bfase integer check (bfase between 1 and 4 ),
		bastd integer check (bastd between 0 and 200),
		bagrp integer check (bagrp between 1 and 10 or bagrp is null),
		bpc char(3) constraint refbd references docent on delete set null,
		bsoort char(1) check ( bsoort in ('m','z')),
		constraint baskey primary key (bafk));

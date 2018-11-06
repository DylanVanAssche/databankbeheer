drop table basisact purge;
drop table minoract purge;
drop table minor purge;
drop table basis purge;
drop table groepoefpra purge;
drop table practica purge;
drop table theorie purge;
drop table oefpra purge;
drop table fiche purge;
drop table activiteit purge;
drop table docent purge;
drop table lokaal purge;


create table docent(
--		dnr int,
		dafk char(3),
		dnaam varchar2(20),
		dgeslacht char(1) check ( dgeslacht in ( 'm','v')),
		dgbd date check ( to_char(dgbd,'DD/MM/YYYY') > '01/01/1950'),
		constraint docent_pk primary key (dafk) );

create table lokaal(
		lid char(5),
		lnaam varchar2(20),
		lcapa integer check ( lcapa between 5 and 400),
		lbeamer char(1) check ( lbeamer in ('j','n')),
		constraint lokaal_pk primary key (lid) );

create table activiteit(
		aid  integer,
		anaam varchar2(20),
		ascu integer check ( ascu between 9 and 36 ),
		constraint activiteit_pk primary key (aid) );

create table fiche(
		fid  integer constraint reffa references activiteit on delete cascade,
		fdoel varchar2(400),
		finh clob,
		fstp integer check ( fstp between 1 and 20 ),
		fslu integer check ( fslu between 0 and 600 ),
		check( fslu between 25*fstp and 30*fstp),
		constraint fiche_pk primary key (fid) );

create table theorie(
		taid integer constraint refta references activiteit on delete cascade,
		tdafk char(3) constraint reftd references docent on delete set null,
		constraint theorie_pk primary key (taid)) ;

create table oefpra(
		oaid integer constraint refoa references activiteit on delete cascade,
		constraint oefpra_pk primary key (oaid)) ;

create table groepoefpra(
		aid integer constraint refgo references oefpra on delete cascade,
		dafk char(3) constraint refgd references docent on delete cascade ,
		aant integer  check ( aant between 1 and 10 ),
		constraint groepoefpra_pk primary key (aid,dafk) );

		
create table practica(
		paid integer constraint refpo references oefpra on delete cascade,
		plid char(5) constraint refpl references lokaal on delete set null,
		padoc integer check ( padoc between 1 and 3),
		constraint practica_pk primary key (paid) );

create table basis(
		bafk char(8),
		bnaam varchar2(20),
		bfase integer check (bfase between 1 and 4 ),
		bastd integer check (bastd between 0 and 200),
		bagrp integer check (bagrp between 1 and 10 or bagrp is null),
		bpc char(3) constraint refbd references docent on delete set null,
		bsoort char(1) check ( bsoort in ('m','z')),
		constraint basis_pk primary key (bafk));

create table minor(
		bafk char(8) constraint refmb references basis on delete cascade,
		mafk char(8),
		mnaam varchar2(20),
		mfase integer check ( mfase between 1 and 4),
		mastd integer check (mastd between 0 and 100),
		magrp integer check (magrp between 1 and 10 or magrp is null),
		constraint minor_pk primary key (bafk,mafk));

create table basisact(
		bafk char(8) constraint refbab references basis
					on delete cascade ,
		aid integer	constraint refbaa references activiteit
					on delete cascade,
		constraint basisact_pk primary key (bafk,aid) );

create table minoract(
		bafk char(8),
		mafk char(8) ,
		aid integer	constraint refmaa references activiteit
					on delete cascade,
		constraint minoract_pk primary key (bafk,mafk,aid),
		foreign key (bafk,mafk) references minor on delete cascade );

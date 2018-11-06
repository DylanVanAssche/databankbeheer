drop table e_deelname purge;
drop table e_persoon purge;

create table e_persoon(
    pnr integer,
    pgs char(1) check (pgs in ('m','v')),
    pro char(1) check (pro in ('j','n')),
    pnm char(24),
    pvn char(14),
    ppc integer,
    pwp char(24),
    pgb date,
    constraint e_persoon_pk primary key (pnr));

create table e_deelname(
    pnr integer ,
    bafk char(8) ,
    res float,
    constraint e_deelname_pk primary key (pnr,bafk),
    foreign key (pnr) references e_persoon,
    foreign key (bafk) references basis
);

create table command(
    number  int auto_increment primary key,
    name    varchar(10) not null,
    level   int not null
)

drop table if exists target;

create table target(
    number  int auto_increment primary key,
    name    varchar(20) not null,
    expl    varchar(100)
)

insert into target(name,expl) values('@a', 'all player');
insert into target(name) values('@e', '');
insert into target(name) values('@p', 'nearest player');
insert into target(name) values('@r', 'random player');


drop table if exists items;

create table items(
    number  int auto_increment primary key,
    name    varchar(20) not null,
    expl    varchar(100)
)
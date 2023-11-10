create table command(
    number  int auto_increment primary key,
    name    varchar(10) not null,
    argument   int not null
)

insert into command(name,argument) values('help', 0)
insert into command(name,argument) values('kick', 1)
insert into command(name,argument) values('ban', 1)
insert into command(name,argument) values('pardon', 1)
insert into command(name,argument) values('ban-ip', 1)
insert into command(name,argument) values('pardon-ip', 1)
insert into command(name,argument) values('op', 1)
insert into command(name,argument) values('deop', 1)
insert into command(name,argument) values('tp', 1)
insert into command(name,argument) values('give', 1)
insert into command(name,argument) values('stop', 0)
insert into command(name,argument) values('save-all', 0)
insert into command(name,argument) values('save-off', 0)
insert into command(name,argument) values('save-on', 0)
insert into command(name,argument) values('list', 0)
insert into command(name,argument) values('say', 1)
insert into command(name,argument) values('whitelist', 1)
insert into command(name,argument) values('time', 1)
insert into command(name,argument) values('gamemode', 1)

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
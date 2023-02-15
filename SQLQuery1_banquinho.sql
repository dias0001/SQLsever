create database banquinho

create schema city authorization dbo

use banquinho

create table city.banquinho(
	banq_CD			int				identity(1,1)		primary key,
	banq_NM			varchar(255)	not null,
	banq_fone		varchar(100)	not null,
	banq_email		varchar(255)	not null,
	banq_endereço	varchar(255)	not null,
	banq_cep		varchar(10)		not null,
	banq_região		varchar(50)		not null,
	banq_país		varchar(100)	not null,
	banq_cidade		varchar(255)	not null 
)
go

insert into city.banquinho values ('roberto', '12-99999-9999', 'g.m.b@gmail.com', 'rua Argentina 370', '12433-401', 'Suldeste', 'Brasil', 'São José dos Campos')
insert into city.banquinho values ('Luiz', '12-99999-9999', 'g.m.b@gmail.com', 'rua Argentina 370', '12433-401', 'Sul', 'Brasil', 'Santa Catarina')
insert into city.banquinho values ('Pablo', '12-99999-9999', 'g.m.b@gmail.com', 'rua Argentina 370', '12433-401', 'Norte', 'Brasil', 'Pernambuco')

select * from city.banquinho 

create database laundry
go

use laundry
go

create schema bath  authorization dbo
go

create table bath.Consumidor
(
Cons_cd		INT				Identity(1,1)	Primary Key,
Cons_nm		VARCHAR(50)		NOT NULL,
Cons_end	VARCHAR(50)		NOT NULL,
Cons_email	VARCHAR(50)		NOT NULL
)
go

Create table bath.Produtos
(
Prod_cd		INT				Identity(1,1)	Primary Key,
Prod_nm			VARCHAR(50)		NOT NULL,
Prod_valor		Real			NOT NULL
)
go

Create table bath.Servicos
(
Serv_cd			INT				Identity(1,1)	Primary Key,
Serv_nm			VARCHAR(50)		NOT NULL,
Serv_valor		real			NOT NULL
)
GO


Create table bath.Funcionarios
(
Func_cd		INT				Identity(1,1) Primary Key,
Func_nm		VARCHAR(50)		NOT NULL,	
Func_end	VARCHAR(30)		NOT NULL,
Func_cid	VARCHAR(30)		NOT NULL,
Func_pais	VARCHAR(30)		NOT NULL
)

create table bath.caixa
(
	Caix_CD		int		identity(1,1)	Primary key,
	func_CD		int		foreign key		references bath.Funcionarios (Func_CD),
	Cons_CD		int		foreign key		references bath.Consumidor (Cons_cd),
	Prod_CD		int		foreign key		references bath.Produtos (Prod_cd),
	Serv_CD		int		foreign key		references bath.Servicos (Serv_cd),
	Caix_Qtde	int		not null,
	Caix_valor	money	not null,
);

select func_NM, cons_NM, Prod_NM, Serv_NM, caix_qtde, caix_valor 
from bath.caixa
join bath.Funcionarios on caixa.Func_cd = Funcionarios.Func_cd
join bath.Consumidor on caixa.Cons_cd = Consumidor.Cons_cd
join bath.Produtos on caixa.Prod_cd = Produtos.Prod_cd
join bath.Servicos on caixa.Serv_cd = Servicos.Serv_cd

select * from bath.caixa
join bath.Funcionarios on caixa.Func_cd = Funcionarios.Func_cd
join bath.Consumidor on caixa.Cons_cd = Consumidor.Cons_cd
join bath.Produtos on caixa.Prod_cd = Produtos.Prod_cd
join bath.Servicos on caixa.Serv_cd = Servicos.Serv_cd





drop table bath.caixa

select * from bath.caixa
join
bath.caixa
on
caixa.func_cd=caixa.cat_cd
join
custos.categoria
on
caixa.cat_cd=caixa.cat_cd



-- insere dados tabela Consumidor
insert into bath.Consumidor values ('Matthias','Rua Cruise  ','MCruise@grosbeak.com');
insert into bath.Consumidor values ('Meenaksh','Rua Mason   ','Meenakshi.Mason@JACANA.COM');
insert into bath.Consumidor values ('Christia','Rua Cage    ','Christian.Cage@KINGLET.COM');
insert into bath.Consumidor values ('Gerald',' Rua Martin  ','GMartin@scoter.com');
insert into bath.Consumidor values ('Guillaum','Edwards ','GEdwards@shrike.com');
insert into bath.Consumidor values ('Maurice ','Rua Mahoney ','Maurice.Mahoney@SNIPE.COM');
insert into bath.Consumidor values ('Maurice ','Rua Hasan   ','Maurice.Hasan@STILT.COM');
insert into bath.Consumidor values ('Diana',' Rua  Sen     ','DSen@tattler.com');
insert into bath.Consumidor values ('Maurice ','Rua Daltrey ','MDaltrey@teal.com');
insert into bath.Consumidor values ('Elizabet','Rua Brown   ','Elizabeth.Brown@THRASHER.COM');
insert into bath.Consumidor values ('Maximili','Rua Henner  ','Maximilian.Henner@DUNLIN.COM');
insert into bath.Consumidor values ('Sam ',' Rua   Spielber','SSpielberg@gadwall.com');
insert into bath.Consumidor values ('Sachin ',' Rua Neeson  ','SNeeson@gallinule.com');
insert into bath.Consumidor values ('Sivaji  ','Rua Landis  ','Sivaji.Landis@GOLDENEYE.COM');
insert into bath.Consumidor values ('Mammutti','Rua Pacino  ','Mammutti.Pacino@GREBE.COM');
insert into bath.Consumidor values ('Elias',' Rua  Fawcett ','EFawcett@jacana.com');
insert into bath.Consumidor values ('Ishwarya','Rua Roberts ','IRoberts@lapwing.com');
insert into bath.Consumidor values ('Gustav ',' Rua Steenbur','Gustav.Steenburgen@PINTAIL.COM');
insert into bath.Consumidor values ('Markus',' Rua Rampling','Markus.Rampling@PUFFIN.COM');
insert into bath.Consumidor values ('Gomer  ',' Rua Slater ',' RuaGSlater@pyrrhuloxia.com');
insert into bath.Consumidor values ('Divine',' Rua Aykroyd ','DAykroyd@redstart.com');
insert into bath.Consumidor values ('Dieter',' Rua Matthau ','Dieter.Matthau@VERDIN.COM');
insert into bath.Consumidor values ('Divine',' Rua Sheen ',' Rua Divine.Sheen@COWBIRD.COM');
insert into bath.Consumidor values ('Fernando','Rua Grodin  ','FGrodin@creeper.com');
insert into bath.Consumidor values ('Frederic','Rua Romero ',' RuaFRomero@curlew.com');
insert into bath.Consumidor values ('Goldie ',' Rua Montand ','Goldie.Montand@DIPPER.COM');
insert into bath.Consumidor values ('Sidney ',' Rua Capshaw ','Sidney.Capshaw@DUNLIN.COM');
insert into bath.Consumidor values ('Fredwina','Rua Lyon ',' Rua  FLyon@flicker.com');
insert into bath.Consumidor values ('Eddie  ',' Rua Boyer',' Rua  EBoyer@gallinule.com');
insert into bath.Consumidor values ('Eddie',' Rua  Stern  ',' RuaEddie.Stern@GODWIT.COM');
insert into bath.Consumidor values ('Ernest ',' Rua Weaver ',' RuaErnest.Weaver@GROSBEAK.COM');
insert into bath.Consumidor values ('Diana',' Rua  lorentz ','dlor@limpkin.com');
insert into bath.Consumidor values ('Stephen','Rua King',' Ruasking@merganser.com');
insert into bath.Consumidor values ('Alexande','Rua Hunold','AHun@MOORHEN.COM');

OBS
OBs


DELETE FROM bath.Consumidor

DELETE FROM bath.Consumidor
WHERE Cons_nm='Stephen'


select * from bath.Consumidor

SELECT * FROM bath.Consumidor
ORDER BY Cons_nm; 

SELECT * FROM bath.Consumidor
ORDER BY Cons_nm desc;

OBS
OBS 
Faça uma pesquisa por nome e endereço dos consumidores.

select *
from bath.Pro dutos

select Prod_nm
from bath.Produtos

select distinct Prod_nm
from bath.Produtos

insert into bath.Produtos values ('queijo',10.00)
select * from bath.produtos

select * from bath.Servicos

SELECT * FROM bath.consumidor
WHERE cons_nm = 'Eddie'
and cons_end = 'Rua Cage' 
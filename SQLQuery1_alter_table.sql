create database seguros
go

use seguros
go

create schema seg authorization dbo
go

create table seg.clientes
(
seg_cd		int			  identity(1,1)   primary key,
seg_nm		varchar(40),
seg_fone	varchar(20),
seg_email	varchar(40),
seg_end		varchar(40),
seg_cep		varchar(10),
seg_regiao	varchar(50),
seg_pais	varchar(50),
seg_dep		varchar(50)
) 
go

drop table seg.clientes

insert into seg.clientes values ('marco','123456','l.g.cha.d@gmail.com','rual tal','endereço','12012-290','brasil','dependenters')
insert into seg.clientes values ('vanderson','123456','l.g.cha.d@gmail.com','rual tal','endereço','12012-290','brasil','dependenters')
insert into seg.clientes values ('laércio','123456','l.g.cha.d@gmail.com','rual tal','endereço','12012-290','brasil','dependenters')


select * from seg.clientes

select seg_nm, seg_fone from seg.clientes

faça até aqui!!!

-- sem apagar o banco, faça uma auteração
alter table seg.clientes
add CLI_email varchar(40) 

alter table seg.clientes
alter column seg_email varchar(40)

alter table seg.clientes
drop column cli_email

--acrescente o campo região, com varchar 40
alter table seg.clientes
add CLI_email varchar(40) 

--depois das alterações, delete os dados, corrija e importe novamente



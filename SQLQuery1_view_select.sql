create database clientes
go
 
use clientes 
go

create schema senac authorization dbo 
go

create table senac.alunos (
	alu_CD			int				identity(1,1)		primary key,
	alu_NM			varchar(30)		not null,
	alu_sobrenome	varchar(30)		not null,
	alu_nasc		varchar(30)		not null,
	alu_cidade		varchar(30)		not null,
);
go

create view Alunossininformacoes as
select alu_CD, alu_NM, alu_sobrenome, alu_nasc, alu_cidade from senac.alunos
where alu_cidade = 'SJC'

insert into senac.alunos values('Roberto', ' Dias', '22/04/1978', 'SJC')
insert into senac.alunos values('João', 'Roberto', '22/06/1998', 'SJC')
insert into senac.alunos values('Glauber', ' Ruiz', '104/1978', 'SJC')
insert into senac.alunos values('Paulo', ' Fernandez', '2004/1978', 'SJC')
insert into senac.alunos values('Giovane', ' Thubias', '24/04/1978', 'SJC')
insert into senac.alunos values('Julio', ' Petra', '15/04/1978', 'SJC')
insert into senac.alunos values('Rhuan', ' Martinez', '30/04/1978', 'SJC')
insert into senac.alunos values('Renato', 'Prado', '12/04/1978', 'SJC')
insert into senac.alunos values('Pablo', 'Hernanez', '05/04/1978', 'SJC')
insert into senac.alunos values('Chaves', ' Dias', '0/04/1978', 'SJC')
insert into senac.alunos values('Diogo', ' Dias', '02/04/1978', 'SJC')

SELECT  *  FROM  Alunossininformacoes


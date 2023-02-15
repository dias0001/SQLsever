create database estuds
---------------------------------------------------
use estuds
---------------------------------------------------
create schema senac authorization dbo
-----------------------------------------------------
create table senac.alunos
(
alunos_cd			int				Identity(1,1)  primary key,
alunos_Nm			varchar(30)		not null,
alunos_End			varchar(30)		not null,
alunos_Fone			varchar(30)		not null,
alunos_email		varchar(30)		not null
)
go


CREATE TABLE senac.materias
(
materias_cd					int				Identity(1,1)	primary key,
materias_Nm					varchar(25)		not null,
materias_Prof				varchar(25)		not null,
materias_dias_da_semana		varchar(25)		not null,
)
go

insert into senac.alunos
values 
('Luis', 'S�o jos� dos campos-SP', '+55(12)996122587', 'l.g.chaves.f@gmil.com'),
('Bravo', 'Ca�apava-SP', '+55(12)996122587', 'l.g.chaves.f@gmil.com'),
('Gustavo', 'Taubate-SP', '+55(12)996122587', 'l.g.chaves.f@gmil.com');

insert into senac.materias
values
('Matem�tica', 'Aline', 'Alg�bra'),
('F�sica', 'Jo�o', 'Alg�bra'),
('Portugu�s', 'Paulo', 'Pronomes');

select * from senac.alunos 
select * from senac.materias

select materias_Nm from senac.materias
select alunos_Nm from senac.alunos

select * from senac.materias
where materias_NM like 'f%'
-----------------------------------------------------
BACKUP DATABASE [estuds] TO  DISK = N'C:\SQL2019\DB\Backup\estuds.bak' WITH NOFORMAT, NOINIT,  NAME = N'estuds-Completo Banco de Dados Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

USE [master]
RESTORE DATABASE [estuds] FROM  DISK = N'C:\SQL2019\DB\Backup\estuds.bak' WITH  FILE = 2,  NOUNLOAD,  STATS = 5

GO
-----------------------------------------------------
use master 
drop database estuds
-----------------------------------------------------


-----------------------------------------------------

Rode os c�digos para 
BACKUP
E 
RESTORE

Insira tr�s alunos e tr�s materias

Fa�a um select geral para as duas tabelas

Fa�a um select pesquisando por nome das materias e o nome dos alunos.

Coloque GO entre os comandos

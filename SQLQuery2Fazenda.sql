create database farm
---------------------------------------------------
use farm
---------------------------------------------------
create schema fazenda authorization dbo

-----------------------------------------------------
CREATE TABLE fazenda.funcionarios(
	func_cd		INT				Identity(1,1)	primary key,
	func_Nm		VARCHAR(30)		not null,
	func_End	VARCHAR(30)		not null,
	func_Fone	VARCHAR(30)		not null,
	func_email	VARCHAR(30)		not null
	)
	go


CREATE TABLE fazenda.materiais(
	mat_cd				INT				Identity(1,1)  primary key,
	mat_Nm				VARCHAR(25)		not null,
	mat_Prof			VARCHAR(25)		not null,
	mat_dias_da_semana	VARCHAR(25)		not null
	)
	GO
------------
Faça os códigos para 
BACKUP

BACKUP DATABASE [farm] TO  DISK = N'C:\SQL2019\DB\Backup\farm.bak' WITH NOFORMAT, NOINIT,  NAME = N'farm-Completo Banco de Dados Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
--------------
E 
RESTORE

USE [master]
RESTORE DATABASE [farm] FROM  DISK = N'C:\SQL2019\DB\Backup\farm.bak' WITH  FILE = 1,  NOUNLOAD,  STATS = 5

-------------------

insert into fazenda.funcionarios values ('luis', 'Rua Estados Unidos', '12-99999-9999', 'm.b.g@gmail.com.br')
insert into fazenda.funcionarios values ('Roberto', 'Av: Ouro Fino', '12-99999-9999', 'm.b.g@gmail.com.br')
insert into fazenda.funcionarios values ('Luiz', 'Av: Dos Austronautas', '12-99999-9999', 'm.b.g@gmail.com.br')

insert into fazenda.materiais values ('prego', 'cavalo', 'terça-feira, quinta-feira')
insert into fazenda.materiais values ('ferradura', 'cavalo', 'segunda, quarta')
insert into fazenda.materiais values ('martelo', 'cavalo', 'sexta-feira, quarta-feira')

select * from fazenda.materiais 
----------------------------
--Insira três funcionarios e três materiais
-----------------------------

--Faça um select geral para as duas tabelas

Teste o select abaixo:
SELECT func_Nm, func_End FROM fazenda.funcionarios
UNION
SELECT mat_Nm, mat_Prof FROM fazenda.materiais

-------------
Procure identificar o que o select acima faz...

Coloque GO entre os comandos

Faça a ligação com o Visual Studio
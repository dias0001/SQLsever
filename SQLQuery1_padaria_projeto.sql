create database systems
go

use systems
go

create schema syst authorization dbo
go

create table syst.funcionarios(
	func_cd				int				identity(1, 1)	primary key,
	func_NM				varchar(20)		not null,
	func_end			varchar(20)		not null,
	func_CPF			int				not null,
	func_RG				int				not null,
	func_cidade			varchar(35)		not null,
	func_UF				varchar(3)		not null,
	func_CEP			int				not null,
	func_telefone		int				not null,
	func_celular		int				not null,	
	func_email			varchar(30)		not null,
	func_dataCadastro	int				not null
);
go


create table syst.clientes(
	clie_cd				int				identity(1,1)	primary key,
	clie_NM				varchar(20)		not null,
	clie_end			varchar(20)		not null,
	clie_cidade			varchar(35)		not null,
	clie_estado			varchar(35)		not null,
	clie_cep			int				not null,
	clie_CPF			int				not null,
	clie_RG				int				not null,
	clie_telefone		int				not null,
	clie_celular		int				not null,
	clie_email			varchar(30)		not null,
	clie_dataCadastro	int				not null
);
go

create table syst.fornecedores(
	clie_cd				int				identity(1,1)	primary key,
	clie_NM				varchar(20)		not null,
	clie_cnpj			varchar(35)		not null,
	clie_end			varchar(20)		not null,
	clie_numero			int				not null,
	clie_cidade			varchar(30)		not null,
	clie_UF				varchar			not null,
	clie_cep			int				not null,
	clie_telefone		int				not null,
	clie_celular		int				not null,
	clie_email			int				not null,
	clie_Cadastro		int				not null,
);
go

create table syst.produtos(
	prod_CD				int				identity(1,1)		primary key,
	prod_descricacao	varchar(20)		not null,
	prod_precoUnitario	money			not null,
	prod_estoque		int				not null

);
go

insert 









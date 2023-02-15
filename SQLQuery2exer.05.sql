create database List

use List

create schema Black authorization dbo

CREATE table Black.List
(
	CLI_cd			INT				Identity(1,1)	primary key,
	CLI_nm			varchar(50)		not null,
	CLI_fone		varchar(50)		not null,
	CLI_end			varchar(50),
	CKLI_email		varchar(50)		not null,
);
GO

select * from Black.List;
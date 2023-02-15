create database store
go

use store
go

create schema store authorization dbo

create table store.empregados (
	Empr_CD					int				identity(1,1)	primary key,
	Empr_NM					varchar(25)		not null,
	Empr_SobreNome			varchar(20)		not null,
	Empr_dataContratacao	date				not null,
	Empr_Departament		varchar(25)		not null
);

drop table store.empregados

INSERT INTO store.empregados 
VALUES ('João', 'Silva', '2021-01-15', 'Vendas'),
       ('Maria', 'Souza', '2022-02-10', 'Marketing'),
       ('Pedro', 'Ferreira', '2020-05-01', 'Recursos Humanos'),
       ('Ana', 'Carvalho', '2022-01-20', 'Contabilidade'),
       ('Lucas', 'Santos', '2021-11-30', 'Desenvolvimento'),
       ('Carla', 'Costa', '2020-08-12', 'Atendimento ao Cliente'),
       ('Felipe', 'Almeida', '2021-06-05', 'Marketing'),
       ('Mariana', 'Gomes', '2022-01-10', 'Recursos Humanos'),
       ('Rafael', 'Oliveira', '2020-10-20', 'Desenvolvimento'),
       ('Amanda', 'Rodrigues', '2022-02-05', 'Atendimento ao Cliente'),
       ('Thiago', 'Pereira', '2021-04-15', 'Contabilidade'),
       ('Bruna', 'Nunes', '2020-09-01', 'Vendas'),
       ('Roberto', 'Lima', '2021-07-10', 'Marketing'),
       ('Isabela', 'Siqueira', '2022-01-30', 'Recursos Humanos'),
       ('Fernanda', 'Costa', '2020-12-05', 'Desenvolvimento'),
       ('Rodrigo', 'Santana', '2021-03-20', 'Vendas'),
       ('Juliana', 'Gonçalves', '2022-02-01', 'Atendimento ao Cliente'),
       ('Gustavo', 'Martins', '2020-11-10', 'Recursos Humanos'),
       ('Larissa', 'Cunha', '2021-08-15', 'Contabilidade'),
       ('Leonardo', 'Rocha', '2022-01-05', 'Desenvolvimento');

	   CREATE VIEW EmployeeInformation As select Empr_CD, Empr_NM, Empr_SobreNome, Empr_dataContratacao, Empr_Departament
		from store.empregados
		where Empr_Departament = 'Contabilidade'

		select * from EmployeeInformation

		 DELETE FROM nome_da_tabela WHERE condição; 
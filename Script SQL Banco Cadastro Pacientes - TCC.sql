-- Criar banco de dados

create database dbcadastropacientes;

-- Banco de dados a ser utilizado

use dbcadastropacientes;

-- Criar tabela

create table tbpacientes(
idPac int primary key,
nome varchar(60) not null,
idade int,
sexo varchar(15),
Endereço varchar(50), 
telefone varchar(20) not null, 
email varchar(50),
historicomedico varchar(200),
login varchar(30) not null unique,
senha varchar(20) not null
);

-- imprime tabela

describe tbpacientes;

-- Popular tabela
-- Create

insert into tbpacientes(idPac, nome, idade, sexo, Endereço, telefone, email, historicomedico, login, senha)
values(1, 'Lissama Veronese de França Almeida', '28','Feminino', 'Rua Maringá,420','41 99656-5845','lissamavdf@gmail.com','Proprietária Charope','Lissama','12345');

-- Exibir dados tabela

select * from tbpacientes;

insert into tbpacientes(idPac, nome, idade, sexo, Endereço, telefone, email, historicomedico, login, senha)
values(2, 'Admin', '30','Masculino', '','41 98773-2305','','','Admin','12345');

-- modifica dados

update tbpacientes set telefone = '41 98775-8557' where idPac = 2;

select * from tbpacientes;

-- apagar registro
delete from tbpacientes where idPac = 1;

select * from tbpacientes;

update tbpacientes set idPac = '1' where idPac = 2;

select * from tbpacientes;

alter table tbpacientes modify idPac int primary key auto_increment;

create table tbpaciente(
idPac int primary key auto_increment,
nome varchar(60) not null,
idade int,
sexo varchar(15),
Endereço varchar(50), 
telefone varchar(20) not null, 
email varchar(50),
historicomedico varchar(200),
login varchar(30) not null unique,
senha varchar(20) not null
);

select * from tbpaciente;

alter table tbpaciente drop column login;


alter table tbpaciente drop column senha;

insert into tbpaciente(nome, idade, sexo, Endereço, telefone, email, historicomedico)
values('Lissama Veronese de França Almeida', '28','Feminino', 'Rua Maringá,420','41 99656-5845','lissamavdf@gmail.com','Proprietária Charope');

select * from tbpaciente; 

alter table tbpaciente change column historicomedico historicoclinico varchar(200);

describe tbpaciente;

alter table tbpaciente change column Endereço endereco varchar(50);

describe tbpaciente;

use dbcadastropacientes;

describe tblogin;

insert into tblogin(iduser, user_name, senha, usuario)
values(1,"Admin","123456","Sullivan");

select * from tblogin;

describe tblogin;

describe tbpaciente;

drop table tbpaciente;

create table tbpacientes(
idpac int auto_increment primary key not null,
nome varchar(100) not null,
idade int,
data_de_nascimento date,
cpf varchar(20),
sexo varchar(30) not null,
estado_civil varchar(30),
profissao varchar(50),
endereco varchar(150),
telefone varchar(20),
celular varchar(20) not null,
peso int,
altura decimal,
diagnostico_clinico varchar(500),
diagnostico_fisioterapeutico varchar(500),
queixa_principal varchar(500),
historia_doenca_atual varchar(500),
historia_doenca_pregressa varchar(500),
medicamentos varchar(100),
comorbidades varchar(100),
atividades_fisicas boolean,
quais_atividades varchar(100),
frequencia varchar(50),
duracao varchar(50),
pa varchar(20),
fc int,
fr int,
inspecao varchar(200),
goniometria varchar(200),
testes_especificos varchar(200),
testes_complementares varchar (200),
dor int,
objetivos varchar(500));


ADD CONSTRAINT tbpacientes PRIMARY KEY (idpac);

describe tbpacientes;
alter table tbpacientes add email varchar(50);

alter table tbpacientes add palpacao varchar(150),;

describe tbpacientes;

select * from tbpacientes;

alter table tbpacientes change column altura altura varchar(15), change column atividades_fisicas atividades_fisicas varchar(15) ;

use dbcadastropacientes;

select idpac as ID, nome as Nome, idade as Idade, data_de_nascimento as DtNasc, cpf as CPF,sexo as Sexo,estado_civil as EstadoCivil,profissao as Profissao,endereco as Endereco,telefone as Telefone,celular as Celular,peso as Peso,altura as Altura,diagnostico_clinico as DiagnósticoClínico, diagnostico_fisioterapeutico as DiagnóticoFisioterapêutico, queixa_principal as QueixaPrincipal,historia_doenca_atual as HDA,historia_doenca_pregressa as HDP,medicamentos as Medicamentos,comorbidades as Comorbidades,atividades_fisicas as AtividadesFísicas,quais_atividades QuaisAtividades,frequencia as Frequência,duracao as Duração,pa as PA,fc as FC,fr as FR,inspecao as Inspeção,goniometria as Goniometria,testes_especificos as TestesEspecíficos,testes_complementares as TestesComplementares,dor as Dor,objetivos as Objetivos,email as Email,palpacao as Palpação from tbpacientes;

select idpac as ID, nome as Nome, idade as Idade, data_de_nascimento as DtNasc, cpf as CPF, sexo as Sexo, estado_civil as EstadoCivil, profissao as Profissao, endereco as Endereco, telefone as Telefone, celular as Celular, peso as Peso, altura as Altura, diagnostico_clinico as DiagnósticoClínico, diagnostico_fisioterapeutico as DiagnósticoFisioterapêutico, queixa_principal as QueixaPrincipal, historia_doenca_atual as HDA, historia_doenca_pregressa as HDP, medicamentos as Medicamentos,comorbidades as Comorbidades,atividades_fisicas as AtividadesFísicas,quais_atividades QuaisAtividades,frequencia as Frequência,duracao as Duração,pa as PA,fc as FC,fr as FR,inspecao as Inspeção,goniometria as Goniometria,testes_especificos as TestesEspecíficos,testes_complementares as TestesComplementares,dor as Dor,objetivos as Objetivos,email as Email,palpacao as Palpação from tbpacientes;




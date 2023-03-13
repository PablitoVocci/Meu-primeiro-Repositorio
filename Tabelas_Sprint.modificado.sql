CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE empresa(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
CNPJ CHAR (14),
RazaoSocial VARCHAR (30),
DataCadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
Endereco VARCHAR (40),
NumeroEnde INT,
Bairro VARCHAR (40),
CEP CHAR (8),
Cidade VARCHAR (40),
Estado VARCHAR (30)
);



CREATE TABLE usuario(
idNome int primary key auto_increment,
Nome VARCHAR (40),
Email VARCHAR (40),
DataCadastro DATETIME default current_timestamp,
Telefone CHAR (15)
);




CREATE TABLE sensor(
idSensor int primary key auto_increment,
TipoSensor VARCHAR (20),
StatusSensor VARCHAR (30), constraint checkstatus check (StatusSensor in ('ativo', 'inativo', 'manutencao'))
);




CREATE TABLE dadoSensor(
idDadoSensor int primary key auto_increment,
DadosDoSensor int,
DadosHora datetime default current_timestamp
);










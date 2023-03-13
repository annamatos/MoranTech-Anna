create database morantech_anna;
use morantech_anna;

create table funcionario(
idFunc int primary key auto_increment,
Nome varchar(60) not null,
CPF char(14) not null,
cargo varchar(20),
HorárioTrab varchar(10)
);

insert into funcionario values
(null, 'Gustavo','234.456.123-20', 'SAC', 30),
(null, 'Kaiky','243.534.674-24', 'SAC', 30),
(null, 'Vinicius','987.732.456-48', 'Manutenção TI', 25),
(null,'Samuel','675.654.356-08','Manutenção sensor', 15),
(null,'Anna','754.657.238-35','Manutenção sensor ', 15),
(null,'Guilherme','754.132.454-12','Análise Jurídica', 5),
(null,'Renata','477.657.765-78','Análise Jurídica', 5),
(null,'João','876.455.234-23','TI', 5),
(null,'Fernando','876.434.876.24','TI', 5);

create table cadastro(
idCliente int primary key auto_increment,
Nome varchar(60) not null,
Email varchar(100) not null,
CNPJ char(14),
Empresa varchar(40),
Telefone char(13),
Cidade varchar(20),
UF char(2)
);

create table recursos(
idRecurso int primary key auto_increment, 
qtdCaminhao varchar(10),

qtdCamara varchar(10),
qtdSensor varchar(10)
);
-- id ser uma chave estrangeira do cadastro

create table model_sensor(
idSensor int primary key,
Modelo varchar (30),
Quantidade varchar(10),
TipoMedição varchar (20),
Numero char(9)
);

create table sensor(
idsensor int primary key, 
empresa varchar(60) not null,
qntSensor varchar(10) not null,
situacao varchar (8) not null,
idmodel varchar(10),
data_manu date not null,
idfunc varchar(10) 
);

create table dados_sensor(
idDados int primary key auto_increment,
Umidade varchar(5) not null,
Temperatura varchar(7) not null
);
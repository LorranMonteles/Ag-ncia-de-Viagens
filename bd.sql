-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Relacao2 (
idreserva VARCHAR(10),
idpacotes VARCHAR(10)
)

CREATE TABLE Reserva (
idreserva VARCHAR(10) PRIMARY KEY,
id_reserva VARCHAR(10),
data_reserva VARCHAR(10),
quantidade_pessoas VARCHAR(10)
)

CREATE TABLE cliente (
nome VARCHAR(10),
idcliente VARCHAR(10) PRIMARY KEY,
telefone VARCHAR(10),
email VARCHAR(10),
endereco VARCHAR(10),
senha VARCHAR(10)
)

CREATE TABLE Destino (
iddestino VARCHAR(10) PRIMARY KEY,
Nome VARCHAR(10),
descricao VARCHAR(10),
imagem_url VARCHAR(10)
)

CREATE TABLE pacotes (
data_validade VARCHAR(10),
descricao VARCHAR(10),
preco VARCHAR(10),
nome VARCHAR(10),
idpacotes VARCHAR(10) PRIMARY KEY
)

CREATE TABLE Relacao3 (
idreserva VARCHAR(10),
idcliente VARCHAR(10),
FOREIGN KEY(idreserva) REFERENCES Reserva (idreserva),
FOREIGN KEY(idcliente) REFERENCES cliente (idcliente)
)

CREATE TABLE Relacao1 (
iddestino VARCHAR(10),
idpacotes VARCHAR(10),
FOREIGN KEY(iddestino) REFERENCES Destino (iddestino),
FOREIGN KEY(idpacotes) REFERENCES pacotes (idpacotes)
)

ALTER TABLE Relacao2 ADD FOREIGN KEY(idreserva) REFERENCES Reserva (idreserva)
ALTER TABLE Relacao2 ADD FOREIGN KEY(idpacotes) REFERENCES pacotes (idpacotes)

Create database concessionaria;

use concessionaria;

CREATE TABLE Veiculo (
codVeiculo INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
corVeiculo VARCHAR(20) NOT NULL,
tipo VARCHAR(20) NOT NULL,
preco decimal(8,2) NOT NULL,
marca VARCHAR(20) NOT NULL,
modelo VARCHAR(20) NOT NUll,
ano YEAR NOT NULL,
motor VARCHAR(10) NOT NULL
);

CREATE TABLE Cliente (
nome VARCHAR(40) NOT NULL,
CPF VARCHAR(15) NOT NULL PRIMARY KEY,
telefone INTEGER NOT NULL,
endereco VARCHAR(100) NOT NULL,
CEP VARCHAR (8) NOT NULL
);

CREATE TABLE Vendedor (
codVendedor INTEGER NOT NULL PRIMARY KEY,
nome VARCHAR(40) NOT NULL,
data_admissao date NOT NULL,
de_ferias BOOLEAN NOT NULL
);

CREATE TABLE Nota_Fiscal (
numero INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
CPF VARCHAR(15) NOT NULL,
codVeiculo INTEGER NOT NULL,
codVendedor INTEGER NOT NULL,
preco DECIMAL(8,2),
data_venda TIMESTAMP NOT NULL,
FOREIGN KEY (CPF) REFERENCES Cliente (CPF),
FOREIGN KEY (codVeiculo) REFERENCES Veiculo (codVeiculo),
FOREIGN KEY (codVendedor) REFERENCES Vendedor (codVendedor)
);

CREATE TABLE Usuario (
codVendedor INTEGER NOT NULL,
username VARCHAR(15) NOT NULL,
senha VARCHAR(20) NOT NULL,
administrador BOOLEAN NOT NULL,
FOREIGN KEY (username) REFERENCES Vendedor (codVendedor)
);

ALTER TABLE cliente MODIFY telefone VARCHAR(15);

ALTER TABLE cliente MODIFY CEP VARCHAR(9);

ALTER TABLE veiculo drop column motor;

ALTER TABLE Usuario DROP CONSTRAINT usuario_ibfk_1;

ALTER TABLE Usuario drop column codVendedor;

ALTER TABLE Usuario MODIFY username INTEGER;

ALTER TABLE Usuario ADD FOREIGN KEY (username) REFERENCES Vendedor (codVendedor);

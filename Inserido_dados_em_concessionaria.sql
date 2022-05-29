use concessionaria;

INSERT INTO cliente (
nome, CPF, telefone, endereco, CEP)
VALUES 
('Anderson Nogueira', '124938253-11', 11073681478, 'Av. Paulista, 2000', '02467-030'),
('Gabriel Bonifacio', '435928123-00', 11975612742, 'Av. Augusta, 312', '04353-090'),
('Danilo Menezes', '2368269485-55', 11936925573, 'Rua dona maria custodia, 45', '05793-080'),
('Vitor Cavalcante', '759026839-00', 11936041864, 'Rua nova granada, 67', '06728-090'),
('Gustavo Sanchez', '387015686-00', 11987895376, 'Rua raimundo chagas, 312', '06793-030');

select * from cliente;

INSERT INTO veiculo (
corVeiculo, tipo, preco, marca, modelo, ano)
VALUES 
('Branco', 'Carro', 51000.00, 'Chevrolet', 'Celta', 2019),
('Prata', 'Carro', 67300.00, 'Renault', 'Sandero', 2018),
('Azul', 'Carro', 140000.00, 'Jaguar', 'XJ8', 1998),
('Branco', 'Moto', 31000.00, 'Yamaha', 'XJ6', 2022),
('Prata', 'Carro', 76500.00, 'Honda', 'Civic', 2016),
('Preto', 'Carro', 120000.00, 'Toyota', 'Corolla', 2022);

select * from veiculo;

INSERT INTO vendedor (
codVendedor, nome, data_admissao, de_ferias)
VALUES 
(56973, 'Janderson Silva', '2017-09-23', 0),
(37928, 'Rafael Gaspertini', '2022-03-09', 0),
(42850, 'Pedro Souza', '2017-07-21', 1),
(89131, 'Rodrigo Lanna', '2019-03-01', 0),
(15762, 'Renata Lima', '2017-07-17', 1);

INSERT INTO vendedor (
codVendedor, nome, data_admissao, de_ferias)
VALUES (23945, 'Gabriela Novaes', '2020-02-10', 0);

select * from vendedor;

INSERT INTO usuario (
username, senha, administrador)
VALUES 
(56973, 'Jander1709', 1),
(37928, 'Rafa2203', 0),
(42850, 'Ped1707', 1),
(89131, 'Rodri1903', 0),
(15762, 'Rena1707', 0),
(23945, 'Gabi2002', 0);

select * from usuario;

INSERT INTO nota_fiscal (
CPF_Cliente, codVeiculo, codVendedor, preco, data_venda)
VALUES 
('124938253-11', 3, 56973, 135000.00, '2021-09-13 15:37:41'),
('435928123-00', 1, 89131, 49000.00, '2019-06-27 19:21:01'),
('2368269485-55', 2, 15762, 69000.00, '2019-03-15 16:56:32'),
('759026839-00', 4, 23945, 31000.00, '2022-04-27 09:42:27'),
('387015686-00', 5, 37928, 72000.00, '2017-11-11 10:25:11'),
('387015686-00', 6, 37928, 119000.00, '2022-02-11 19:13:57');

select * from nota_fiscal;
select * from cliente;
select * from usuario;
select * from veiculo;
select * from vendedor;


use sucos;

select * from tbProduto;

select * from tbCliente;

select CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, DATA_NASCIMENTO, IDADE, SEXO, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA FROM tbCliente;

select CPF, NOME FROM tbCliente;

SELECT CPF, NOME FROM tbcliente LIMIT 5;

SELECT CPF AS CPF_CLIENTE, NOME AS NOME_CLIENTE FROM tbcliente;

SELECT NOME, CPF, SEXO, IDADE, DATA_NASCIMENTO FROM tbcliente;

SELECT * FROM tbCLIente WHERE CIDADE = 'RIO DE JANEIRO';

SELECT * FROM tbProduto WHERE SABOR = 'Limão';

UPDATE tbProduto SET SABOR = 'Cítricos' WHERE SABOR = 'Limão';

SELECT * FROM tbProduto WHERE SABOR = 'Citricos' && EMBALAGEM = 'Garrafa';
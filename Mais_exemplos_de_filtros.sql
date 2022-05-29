SELECT * FROM tbCliente;

select * from tbCliente where idade = 22;

select * from tbCliente where idade > 22;

select * from tbCliente where idade <= 22;

select * from tbCliente where idade <> 22;  /*Este é o simbolo de diferente*/

select * from tbCliente where nome > 'Fernando Cavalcante';

select * from tbProduto;

select * from tbProduto where preco_lista < 16.008;

select * from tbProduto where preco_lista between 16.007 and 16.009;

select * from tbProduto where preco_lista >= 16.007 and preco_lista <= 16.009;

select * from tbCliente;

select * from tbCliente where idade >= 18 and idade <= 22;

select * from tbCliente where idade >= 18 and idade <= 22 and sexo = 'M';

select * from tbCliente where cidade = 'Rio de Janeiro' or bairro = 'Jardins';

select * from tbCliente where (idade >= 18 and idade <= 22 and sexo = 'M') and (cidade = 'Rio de Janeiro' or bairro = 'Jardins');
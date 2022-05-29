use sucos;

select * from tbCliente;

select * from tbCliente where data_nascimento = '1995-01-13';

select * from tbCliente where data_nascimento > '1995-01-13';

select * from tbCliente where data_nascimento <= '1995-01-13';

select * from tbCliente where YEAR(data_nascimento) = 1995;

select * from tbCliente where month(data_nascimento) = 10;

use sucos_vendas;

select * from tabela_de_clientes where cidade in ('São Paulo', 'Rio de Janeiro') and not (idade > 25);

select * from tabela_de_clientes where cidade in ('São Paulo', 'Rio de Janeiro') or not (idade > 20);

select * from tabela_de_clientes where cidade in ('São Paulo', 'Rio de Janeiro') and (idade >= 20 and idade <= 23);

select * from tabela_de_produtos where sabor in ('manga', 'laranja');

select * from tabela_de_produtos where not sabor in ('manga', 'laranja');

select * from tabela_de_produtos where not sabor = 'manga';

select * from tabela_de_produtos where sabor like '%maça%';

select * from tabela_de_produtos where sabor like '%maça%' and embalagem = 'PET';

select * from tabela_de_clientes where nome like '%Mattos%';

select embalagem, tamanho from tabela_de_produtos;

select distinct embalagem, tamanho from tabela_de_produtos;

select distinct embalagem, tamanho from tabela_de_produtos where sabor = 'Laranja';

select distinct embalagem, tamanho from tabela_de_produtos where sabor = 'maça';

select distinct embalagem, tamanho from tabela_de_produtos where sabor in ('maça', 'laranja');

select distinct embalagem, tamanho, sabor from tabela_de_produtos;

select distinct bairro from tabela_de_clientes where cidade = 'Rio de janeiro';

select distinct bairro from tabela_de_clientes where cidade = 'Rio de janeiro' limit 4;

select distinct embalagem, tamanho, sabor from tabela_de_produtos limit 10; 

select distinct embalagem, tamanho, sabor from tabela_de_produtos limit 5, 5; /* Irá pegar os próximos 5 itens à partir do quinto item*/

select * from tabela_de_produtos limit 8;

select * from tabela_de_produtos limit 2, 3;

select * from tabela_de_produtos limit 0, 3;

select * from notas_fiscais where data_venda = '2017-01-01' limit 10;

select * from tabela_de_produtos;

select * from tabela_de_produtos order by preco_de_lista; /*ordenando pelo padrão que é a ordem crescente*/

select * from tabela_de_produtos order by preco_de_lista desc; /*ordenando de forma decrescente*/

select * from tabela_de_produtos order by preco_de_lista asc; /*ordenando de forma crescente*/

select * from tabela_de_produtos order by nome_do_produto;

select * from tabela_de_produtos order by nome_do_produto desc;

select * from tabela_de_produtos order by embalagem, nome_do_produto;

select * from tabela_de_produtos order by embalagem desc, nome_do_produto asc;

select * from  tabela_de_produtos where nome_do_produto like '%Morango/Limão%';

select * from itens_notas_fiscais where codigo_do_produto = '1101035' order by quantidade desc;

select * from tabela_de_clientes;

select estado, limite_de_credito from tabela_de_clientes;

select estado, SUM(limite_de_credito) as limite_total from tabela_de_clientes group by estado;

select embalagem, preco_de_lista from tabela_de_produtos;

select embalagem, max(preco_de_lista) as maior_preco from tabela_de_produtos group by embalagem;

select nome_do_produto, embalagem, max(preco_de_lista) as maior_preco from tabela_de_produtos group by embalagem;

select embalagem, count(*) as contador from tabela_de_produtos group by embalagem;

select bairro, sum(limite_de_credito) as limtie from tabela_de_clientes group by bairro;

select bairro, sum(limite_de_credito) as limtie from tabela_de_clientes where cidade = 'Rio de Janeiro' group by bairro;

select cidade, bairro, sum(limite_de_credito) as limtie from tabela_de_clientes group by cidade, bairro;

select cidade, bairro, sum(limite_de_credito) as limtie from tabela_de_clientes group by cidade, bairro order by bairro;

SELECT MAX(`QUANTIDADE`) as 'MAIOR QUANTIDADE' FROM itens_notas_fiscais WHERE `CODIGO_DO_PRODUTO` = '1101035' ;

SELECT COUNT(*) FROM itens_notas_fiscais WHERE codigo_do_produto = '1101035' AND QUANTIDADE = 99;

select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes group by estado;

select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes group by estado having sum(limite_de_credito) > 900000;

select embalagem, max(preco_de_lista) as maior_preco, min(preco_de_lista) as menor_preco from tabela_de_produtos group by embalagem;

select embalagem, max(preco_de_lista) as maior_preco, min(preco_de_lista) as menor_preco from tabela_de_produtos group by embalagem having sum(preco_de_lista) <= 80;

select embalagem, max(preco_de_lista) as maior_preco, min(preco_de_lista) as menor_preco from tabela_de_produtos group by embalagem having sum(preco_de_lista) <= 80 and max(PRECO_DE_LISTA) >= 5;

select * from tabela_de_produtos;

select nome, volume_de_compra, primeira_compra from tabela_de_clientes;

SELECT CPF, COUNT(*) FROM notas_fiscais
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CPF
HAVING COUNT(*) > 2000;

select * from tabela_de_produtos;

select nome_do_produto, preco_de_lista,
case 
	when preco_de_lista >= 12 then 'produto caro'
	when preco_de_lista >= 7 and preco_de_lista < 12 then 'produto em conta'
	else 'produto barato' 
end as status_preco 
from tabela_de_produtos;

select embalagem,
case 
	when preco_de_lista >= 12 then 'produto caro'
	when preco_de_lista >= 7 and preco_de_lista < 12 then 'produto em conta'
	else 'produto barato' 
end as status_preco, avg(PRECO_DE_LISTA) as preco_medio
from tabela_de_produtos
where sabor = 'Manga'
group by embalagem, case 
	when preco_de_lista >= 12 then 'produto caro'
	when preco_de_lista >= 7 and preco_de_lista < 12 then 'produto em conta'
	else 'produto barato' 
end order by embalagem;

SELECT NOME,
CASE WHEN YEAR(data_de_nascimento) < 1990 THEN 'Velho'
WHEN YEAR(data_de_nascimento) >= 1990 AND YEAR(data_de_nascimento) <= 1995 THEN 'Jovens' 
ELSE 'Crianças' 
END  AS "CLASSIFICAÇÃO POR IDADE"
FROM tabela_de_clientes;

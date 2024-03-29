--HAVING

SELECT * FROM TABELA_DE_CLIENTES;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO
FROM TABELA_DE_CLIENTES
GROUP BY ESTADO
HAVING SUM(LIMITE_DE_CREDITO) >= 900000

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) PRECO_MAX, MIN(PRECO_DE_LISTA) PRECO_MIN
FROM TABELA_DE_PRODUTOS
WHERE PRECO_DE_LISTA >= 4
GROUP BY EMBALAGEM
HAVING MAX(PRECO_DE_LISTA) >= 10;

SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) QUANTIDADE
FROM ITENS_NOTAS_FISCAIS
GROUP BY CODIGO_DO_PRODUTO
ORDER BY SUM(QUANTIDADE) DESC;

SELECT NOME_DO_PRODUTO FROM TABELA_DE_PRODUTOS WHERE CODIGO_DO_PRODUTO = 479745
--Clean - 470 ml - Laranja

SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) QUANTIDADE
FROM ITENS_NOTAS_FISCAIS
GROUP BY CODIGO_DO_PRODUTO
HAVING SUM(QUANTIDADE) > 394000
ORDER BY SUM(QUANTIDADE) DESC;


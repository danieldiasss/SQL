-- CTE: COMMON TABLE EXPRESSION

-- SELECT count (DISTINCT Idcliente)
-- FROM transacoes AS t1

-- WHERE t1.IdCliente IN (
--     SELECT DISTINCT IdCliente
--     FROM transacoes
--     WHERE substr(DtCriacao,1,10) = '2025-08-25'
-- )

-- AND substr(DtCriacao,1,10) = '2025-08-29'  


-- Colocou um nome em uma Query
WITH tb_cliente_primeiro_dia AS(

    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-25'

),

tb_cliente_ultimo_dia AS (

    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-29'

),

tb_join AS (

    SELECT t1.IdCliente AS primCliente,
           t2.IdCliente AS ultClient
    FROM tb_cliente_primeiro_dia AS t1

    LEFT JOIN tb_cliente_ultimo_dia AS t2
    ON t1.IdCliente = t2.IdCliente
)

SELECT *
FROM tb_join
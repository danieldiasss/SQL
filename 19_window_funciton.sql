WITH tb_cliente_dia AS (

   SELECT IdCliente,
        substr(DtCriacao,1,10) AS dtDia,
        count(DISTINCT IdTransacao) AS qtdeTransacao

    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao <= '2025-08-30'

    GROUP BY IdCliente, dtDia

)

SELECT *,
       sum(qtdeTransacao) OVER (PARTITION BY IdCliente ORDER BY dtDia) AS acum,
       lag(qtdeTransacao) OVER (PARTITION BY IdCliente ORDER BY dtDia) AS lagTransacao
FROM tb_cliente_dia
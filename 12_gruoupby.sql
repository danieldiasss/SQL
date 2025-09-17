-- SELECT IdProduto,
--        count(*)
-- FROM transacao_produto 

-- GROUP BY IdProduto 

SELECT IdCliente,
       sum(QtdePontos) AS somaPontos,
       count(IdTransacao)

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao <'2025-08-01'

GROUP BY IdCliente
HAVING somaPontos >= 4000      -- É o Where do GROUP BY (filtro do filtro)
ORDER BY somaPontos DESC
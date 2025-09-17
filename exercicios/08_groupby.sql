-- Qual o produto com mais pontos transacionados

SELECT IdProduto,
       sum(VlProduto) AS totalPontos

FROM transacao_produto

GROUP BY IdProduto
ORDER BY sum(VlProduto) DESC
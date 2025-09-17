-- Qual categoria tem maias produtos vendidos?

SELECT 
       T2.DescCateogriaProduto,
       count(DISTINCT T1.IdTransacao) AS qntdVezes
FROM transacao_produto AS T1

LEFT JOIN produtos AS T2
ON T1.IdProduto = T2.IdProduto

GROUP BY T2.DescCateogriaProduto
ORDER BY count(DISTINCT T1.IdTransacao) DESC




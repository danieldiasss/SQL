-- Em 2024, quantas transações de Lovers tivemos?]]

-- SELECT T1.IdTransacao,
--        T1.IdCliente,
--        T2.IdProduto,
--        T3.DescCateogriaProduto
SELECT 
t3.DescCateogriaProduto,
count(DISTINCT t1.IdTransacao)

FROM transacoes AS T1

LEFT JOIN transacao_produto AS T2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS T3
ON T2.IdProduto = T3.IdProduto


WHERE substr(DtCriacao,1,4) = '2024'
-- AND t3.DescCateogriaProduto = 'lovers'

GROUP BY t3.DescCateogriaProduto
HAVING count(DISTINCT T1.IdTransacao) < 1000

ORDER BY count(DISTINCT T1.IdTransacao) DESC
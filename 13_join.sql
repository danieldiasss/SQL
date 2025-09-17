SELECT t1.*,
       t2.DescProduto

FROM transacao_produto AS t1 -- Selecione todas as colunas de transacao produto

LEFT JOIN produtos AS t2  -- Busque as informações na tabela de produto também
ON t1.IdProduto=t2.IdProduto -- onde você vai dar match com IdProduto da Tabela produtos com 
                                                  -- o idProduto da tabela produtos

LIMIT 100000

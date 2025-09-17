-- Intervalos
-- De 0 a 500       -> Ponei
-- de 501 a 100     -> Ponei Premium
-- de 1001 a 5000   -> Mago aprendiz
-- de 5001 a 10000  -> Mago Mestre
-- +10001           -> Mago Supremo

SELECT IdCliente,   
       QtdePontos,
       CASE         -- 1 CASE gera 1 coluna
            WHEN QtdePontos <= 500 THEN 'Ponei'
            WHEN QtdePontos <=1000 THEN 'Ponei Premium'
            WHEN QtdePontos <=5000 THEN 'Mago aprendiz'
            WHEN QtdePontos <=10000 THEN 'Mago Mestre'
            ELSE'Mago Supremo'
        END AS NomeGrupo,

        CASE 
            WHEN QtdePontos <= 1000 THEN 1
            ELSE 0
        END AS flPonei,

        CASE 
            WHEN QtdePontos > 1000 THEN 1
            ELSE 0
        END AS flMago

FROM clientes

ORDER BY QtdePontos DESC



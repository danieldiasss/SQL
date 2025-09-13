SELECT IdCliente,
        -- QtdePontos,
        -- QtdePontos + 10 AS QtdePontosPus10,
        -- QtdePontos * 2 AS QtdePontos
        DtCriacao,
        substr(DtCriacao, 1 , 19) AS dtSubString,
        
        datetime(substr(DtCriacao, 1, 19)) AS dtCriacaoNova,

        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diasemana
        
FROM clientes
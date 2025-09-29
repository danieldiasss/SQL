-- Qual o dia da semana mais ativo de cada usuário     

WITH tb_cliente_semana AS (

    SELECT IdCliente,
        strftime('%w',substr(DtCriacao,1,10)) AS dtDiaSemana,
        count(DISTINCT IdTransacao) AS qtdeTransacao
    FROM transacoes

    GROUP BY IdCliente,dtDiaSemana	

),

tb_rn AS (

    SELECT *,
        CASE
         WHEN dtDiaSemana = 1 THEN 'SEGUNDA'
         WHEN dtDiaSemana = 2 THEN 'TERCA'
         WHEN dtDiaSemana = 3 THEN 'QUARTA'
         WHEN dtDiaSemana = 4 THEN 'QUINTA'
         WHEN dtDiaSemana = 5 THEN 'SEXTA'
         WHEN dtDiaSemana = 6 THEN 'SÁBADO'
         ELSE 'DOMINGO'
         END AS desdiaSemana,

        ROW_NUMBER() OVER (PARTITION BY IdCliente ORDER BY qtdeTransacao DESC) AS rn
        
    FROM tb_cliente_semana

)

SELECT * FROM tb_rn
WHERE rn = 1
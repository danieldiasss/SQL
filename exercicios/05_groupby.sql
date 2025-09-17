-- QUal o valor médio de pontos positivos por dia
SELECT sum(QtdePontos) AS totalPontos,     
       count(DISTINCT substr(DtCriacao,1,10)) AS qtdeDiasUnicos,
       sum(QtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) AS avgPontosDia

FROM transacoes

WHERE QtdePontos > 0;


SELECT substr(DtCriacao,1,10) AS dtDia,
       AVG(QtdePontos) AS avgpontosDia

FROM transacoes

WHERE QtdePontos > 0

GROUP BY 1
ORDER BY 2
;
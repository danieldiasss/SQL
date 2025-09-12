-- Selecione todos os clientes com mais de 500 pontos
SELECT IdCliente,
       QtdePontos
from clientes 

WHERE QtdePontos > 500
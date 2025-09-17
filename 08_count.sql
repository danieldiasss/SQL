-- SELECT                         -- Serve para contar registros da tabela
--         count(*),
--         count(1),
--         count(IdCliente)
-- FROM clientes

-- DISTINCT Pega valores de linhas distintas de uma coluna e todas as possíveis combinações
SELECT COUNT ( DISTINCT IdCliente) 

FROM clientes
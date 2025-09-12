-- Selecione todos os clientes com email cadastrado
select IdCliente,FlEmail
from clientes

-- WHERE FLEmail = 1
-- WHERE FLEmail != 0
WHERE FlEmail <> 0
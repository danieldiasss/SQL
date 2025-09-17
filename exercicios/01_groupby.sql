-- Quantos clientes tem email cadastrado

SELECT sum(FlEmail)
FROM clientes;

SELECT count(*)
From clientes
WHERE FlEmail =1;
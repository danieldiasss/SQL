-- Quantos produtos são de RPG?
SELECT count(*) FROM produtos
WHERE DescCateogriaProduto = 'rpg';

SELECT DescCateogriaProduto,
       count(*)

FROM produtos

GROUP BY DescCateogriaProduto;
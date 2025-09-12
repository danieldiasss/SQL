-- Selecione produtos que contém 'churn' no nome

SELECT *
from produtos

-- where DescProduto = 'Churn_10pp'
-- where DescProduto = 'Churn_2pp'
-- where DescProduto = 'Churn_5pp'

-- where DescProduto in ('Churn_10pp','Churn_2pp','Churn_5pp')

-- WHERE DescProduto LIKE 'churn%'

WHERE DescCateogriaProduto = 'churn_model'
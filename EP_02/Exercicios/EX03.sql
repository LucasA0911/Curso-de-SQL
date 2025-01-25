--Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a descrição maior que 100.

-- meio correto. Porém é importante filtrar a quantidade antes de agrupar.

select  product_category_name,
        product_description_lenght,
        max(product_name_lenght) as product_name_lenght_max,
        avg(product_name_lenght) as product_name_lenght_mean,
        min(product_name_lenght) as product_name_lenght_min

from tb_products

where product_category_name is not NULL

group by product_category_name

HAVING product_description_lenght > 100
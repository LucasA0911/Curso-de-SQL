--Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria

-- correto

SELECT  product_category_name,
        max(product_name_lenght) as product_name_lenght_max,
        avg(product_name_lenght) as product_name_length_mean,
        min(product_name_lenght) as product_category_name_min

from tb_products

where product_category_name is not NULL

GROUP by product_category_name
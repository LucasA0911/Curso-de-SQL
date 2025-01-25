-- Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria

-- correto

select  product_category_name,
        max(product_description_lenght) as description_length_max,
        avg(product_description_lenght) as product_description_lenght_mean,
        min(product_description_lenght) as product_description_lenght_min

from tb_products

where product_category_name is not null

group by product_category_name
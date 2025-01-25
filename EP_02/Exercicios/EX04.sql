--Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a descrição maior que 100. Exiba apenas as categorias com tamanho médio de descrição do objeto maior que 500 caracteres.

select  product_category_name,
        avg(product_description_lenght) as product_description_lenght_mean,
        max(product_name_lenght) as product_name_lenght_max,
        avg(product_name_lenght) as product_name_lenght_mean,
        min(product_name_lenght) as product_name_lenght_min

from tb_products

where product_category_name is not null 
    and product_description_lenght > 100 

group by product_category_name

having product_description_lenght_mean > 500
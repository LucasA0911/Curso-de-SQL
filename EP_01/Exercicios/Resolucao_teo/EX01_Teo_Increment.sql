-- Quantos produtos temos da categoria 'artes'?

-- contagens de linhas, produtos, produtos distintos, e categorias distintas

select  count(*) as qtde_linhas,
        count(product_id) as qtde_product,
        count(DISTINCT product_id) as qtde_product_distinct, -- distinct seleciona apenas dados distintos
        count(distinct product_category_name) as qtde_category_distinct

from tb_products

where product_category_name = 'artes'
-- Quantos produtos temos da categoria 'artes'?

select count(*) as product_category_artes

from tb_products

where product_category_name == 'artes'
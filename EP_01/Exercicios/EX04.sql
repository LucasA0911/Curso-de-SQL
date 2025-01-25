--Ex4: Quantos produtos de 'beleza_saude' com menos de 1 litro?


-- resposta errada


select count (product_category_name)

from tb_products

where product_weight_g < 1000
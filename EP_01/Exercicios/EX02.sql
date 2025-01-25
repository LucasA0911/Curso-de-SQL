-- Quantos produtos tem mais de 5 litros?

-- resultado errado

SELECT count (product_weight_g)

from tb_products

where product_weight_g > 5000
--Ex4: Quantos produtos de 'beleza_saude' com menos de 1 litro?

-- resposta correta

SELECT count (*) as beleza_saude_menos_1lt

from tb_products

where product_length_cm * product_height_cm * product_width_cm / 1000 < 1
    and product_category_name = 'beleza_saude'
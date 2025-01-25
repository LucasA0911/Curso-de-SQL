--Ex3: Crie uma coluna nova que contenha a informação de volume em m3

--resposta correta

ALTER TABLE tb_products
ADD COLUMN products_volume_em_m3 REAL;

update tb_products
set products_volume_em_m3 = (product_length_cm * product_width_cm * product_height_cm) / 1000000;

SELECT products_volume_em_m3
FROM tb_products
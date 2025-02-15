-- agregando
select  product_category_name,
        count(*) as qtde_produtos,
        max(product_weight_g) as maior_peso,
        min(product_weight_g) as menor_peso,
        avg(product_weight_g) as peso_medio

from tb_products

-- removendo a categoria de produtos nula
where product_category_name is not null

-- agrupando
GROUP by product_category_name
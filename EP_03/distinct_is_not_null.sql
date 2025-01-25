-- lista de todas as categorias distintas, ordenadas por ordem alfabetica

SELECT distinct product_category_name

from tb_products 

where product_category_name is not null

order by product_category_name
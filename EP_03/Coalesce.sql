SELECT distinct coalesce(product_category_name, 'outros', 'outros2', 'outros3', 'outros4') as categoria_filna /*substitui o que encontra de nulo, por um valor fixo, que pode ser o valor de uma coluna, ou uma string contanto que ela não seja nula*/

from tb_products 

order by product_category_name
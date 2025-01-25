-- Quantos produtos temos da categoria 'artes'?

--Resposta teo e a melhor forma de fazer
 
--o asterisco faz com que a performance seja melhor do que colocar o nome do campo
SELECT count (*)
as qtde_itens -- altera o nome do resultado da conta

from tb_products

where product_category_name = 'artes'
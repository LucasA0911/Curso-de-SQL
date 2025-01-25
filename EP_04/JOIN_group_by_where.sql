-- qual a receita de cada categoria de produto
-- total de vendas
-- unidades e em pedidos
-- considerando o ano de 2017 e pedidos entregues

select  t2.product_category_name,
        sum(t1.price) as receita,	
        count(*) as total_itens_vendidos,
        count(DISTINCT t1.order_id) as pedidos_realizados,
        round( count(*) / cast(count(distinct t1.order_id) as float), 2) as mean_item_por_pedido

from tb_order_items as t1

left join tb_products as t2
on t1.product_id = t2.product_id

left join tb_orders as t3
on t1.order_id = t3.order_id

where t3.order_status = 'delivered'
and cast(strftime('%Y', t3.order_approved_at)as int) = 2017

group by t2.product_category_name

order by mean_item_por_pedido DESC

limit 10
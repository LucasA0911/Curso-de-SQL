-- Qual o valor total de receita gerada por sellers de cada estado? Considere a base completa, com apenas pedidos entregues

select  t2.seller_state,
        round(sum(t1.price) / count(distinct t2.seller_id),2) as mean_receita_por_sellers,
        count(distinct t2.seller_id) as qtde_sellers

from tb_order_items as t1

left join tb_sellers as t2
on t1.seller_id = t2.seller_id

left join tb_orders as t3
on t1.order_id = t3.order_id

where t3.order_status = 'delivered'

group by t2.seller_state

order by mean_receita_por_sellers desc
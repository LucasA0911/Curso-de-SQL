--Qual o peso médio dos produtos vendidos por sellers de cada estado? Considere apenas o ano de 2017 e pedidos entregues nesta análise.

select  t4.seller_state,
        round(avg(t3.product_weight_g)/1000, 2) as peso_medio_kg

from tb_order_items as t1

left join tb_orders as t2
on t1.order_id = t2.order_id

left join tb_products as t3
on t1.product_id = t3.product_id

left join tb_sellers as t4
on t1.seller_id = t4.seller_id

where t2.order_status = 'delivered'
    and cast(strftime('%Y',t2.order_approved_at) as int) = 2017

group by t4.seller_state

order by peso_medio_kg desc
select *

from(

    select  seller_state,
            count(*) as qtde_vendedores

    from tb_sellers

    --where seller_state IN ('SP','PR','RJ')

    group by seller_state
)

where qtde_vendedores > 10
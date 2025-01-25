select  seller_state,
        count(*) as qtde_vendedores

from tb_sellers

-- filtra o que vem na tabela original
where seller_state IN ('SP','PR','RJ')

group by seller_state

-- filtra o que vem depois da agregação
having count(*) > 10
-- lista de todas as categorias distintas, ordenadas por ordem alfabetica

SELECT 

    distinct CASE WHEN product_category_name is null then 'outros'

                /*chefe pediu para juntar categorias separadas em uma só.*/

                  when product_category_name = 'alimentos'
                        or product_category_name = 'alimentos_bebidas' then 'alimentos'

                  when product_category_name in ('artes','artes_e_artesanato') then 'artes'

                  when product_category_name like '%artigos%' then 'artigos' /*mais pesado de todos, porquê ele precisa buscar uma palavra dentro de um campo, linha e celula*/

                  else product_category_name 
              end as categoria_filna

from tb_products 

order by 1 /*seleciona a primeira coluna que estamos selecionando no select. pode ser usado como 1,2,3,4...*/
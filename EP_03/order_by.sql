select  product_category_name,
        avg(product_description_lenght) as product_description_lenght_mean,
        max(product_name_lenght) as product_name_lenght_max,
        avg(product_name_lenght) as product_name_lenght_mean,
        min(product_name_lenght) as product_name_lenght_min

from tb_products

where product_category_name is not null 
    and product_description_lenght > 100 

group by product_category_name

having product_description_lenght_mean > 500

ORDER by product_name_lenght_max desc,
         product_name_lenght_min desc
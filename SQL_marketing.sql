insert into batch_32.dianr(nama, tempat_lahir, tanggal_lahir, background_studi, jarak_rumah, nomor_sepatu)
values ('Dian Retno Wulandari','Tasikmalaya','11-11-2011','Sains', 4.0, 40);

update batch_32.dianr set nama = 'teletubies' where background_studi = 'Sains'

select* from dianr

select nomor_sepatu, background_studi from dianr

select *
from batch_32.customer_data
where customer_state = 'SP'
limit 10


select *
from batch_32.order_items_data
order by product_id desc


select *
from batch_32.customer_data
where customer_city like '%paulo%'

select upper(customer_city) as city_upper, *
from batch_32.customer_data

select concat(customer_city, '-', customer_state, '-', customer_zip_code_prefix) as labels
from batch_32.customer_data


select product_category_name,
	nullif ('no category', product_category_name) as product_category_name_nullif,
	coalesce (product_category_name, 'no category') as product_category_name_cleaned
from batch_32.product_data
where product_category_name is null 

select date(order_purchase_timestamp) as order_purchase_date,
	date(date_trunc('month', date(order_purchase_timestamp))) as order_purchase_month,
	date_part('month', date(order_purchase_timestamp)) as order_purchase_month_number,
	order_purchase_timestamp
from batch_32.orders_data
where date_part('month', date(order_purchase_timestamp)) = 7
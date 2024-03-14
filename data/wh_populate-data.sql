insert into dwh.dim_customer
(customer_nk, first_name, last_name, email, phone, address) 
select 
	customer_id, 
	first_name, 
	last_name,
	email, 
	phone, 
	address 
from staging.customer;

insert into dwh.dim_product(product_nk, name, price,
							stock, category_name, category_desc, 
							subcategory_name, subcategory_desc) 
select 
	p.product_id, p.name, p.price, p.stock, 
	c.name, c.description, 
	s.name, s.description
from staging.product p 
join staging.subcategory s using(subcategory_id)
join staging.category c using(category_id);


INSERT INTO dwh.dim_date
SELECT TO_CHAR(datum, 'yyyymmdd')::INT AS date_id,
       datum AS date_actual,
       TO_CHAR(datum, 'fmDDth') AS day_suffix,
       TO_CHAR(datum, 'TMDay') AS day_name,
       EXTRACT(DOY FROM datum) AS day_of_year,
       TO_CHAR(datum, 'W')::INT AS week_of_month,
       EXTRACT(WEEK FROM datum) AS week_of_year,
       EXTRACT(ISOYEAR FROM datum) || TO_CHAR(datum, '"-W"IW') AS week_of_year_iso,
       EXTRACT(MONTH FROM datum) AS month_actual,
       TO_CHAR(datum, 'TMMonth') AS month_name,
       TO_CHAR(datum, 'Mon') AS month_name_abbreviated,
       EXTRACT(QUARTER FROM datum) AS quarter_actual,
       CASE
           WHEN EXTRACT(QUARTER FROM datum) = 1 THEN 'First'
           WHEN EXTRACT(QUARTER FROM datum) = 2 THEN 'Second'
           WHEN EXTRACT(QUARTER FROM datum) = 3 THEN 'Third'
           WHEN EXTRACT(QUARTER FROM datum) = 4 THEN 'Fourth'
           END AS quarter_name,
       EXTRACT(YEAR FROM datum) AS year_actual,
       datum + (1 - EXTRACT(ISODOW FROM datum))::INT AS first_day_of_week,
       datum + (7 - EXTRACT(ISODOW FROM datum))::INT AS last_day_of_week,
       datum + (1 - EXTRACT(DAY FROM datum))::INT AS first_day_of_month,
       (DATE_TRUNC('MONTH', datum) + INTERVAL '1 MONTH - 1 day')::DATE AS last_day_of_month,
       DATE_TRUNC('quarter', datum)::DATE AS first_day_of_quarter,
       (DATE_TRUNC('quarter', datum) + INTERVAL '3 MONTH - 1 day')::DATE AS last_day_of_quarter,
       TO_DATE(EXTRACT(YEAR FROM datum) || '-01-01', 'YYYY-MM-DD') AS first_day_of_year,
       TO_DATE(EXTRACT(YEAR FROM datum) || '-12-31', 'YYYY-MM-DD') AS last_day_of_year,
       TO_CHAR(datum, 'mmyyyy') AS mmyyyy,
       TO_CHAR(datum, 'mmddyyyy') AS mmddyyyy,
       CASE
           WHEN EXTRACT(ISODOW FROM datum) IN (6, 7) THEN 'weekend'
           ELSE 'weekday'
           END AS weekend_indr
FROM (SELECT '1998-01-01'::DATE + SEQUENCE.DAY AS datum
      FROM GENERATE_SERIES(0, 29219) AS SEQUENCE (DAY)
      GROUP BY SEQUENCE.DAY) DQ
ORDER BY 1;




insert into dwh.fct_order(order_nk, customer_id, product_id, order_date, quantity,
			price, status )
select order_id, dc.customer_id, dp.product_id, dd.date_id, quantity,
			od.price, status
from staging.orders o
join staging.order_detail od using(order_id)
join dwh.dim_customer dc on o.customer_id = dc.customer_nk
join dwh.dim_product dp on od.product_id = dp.product_nk
join dwh.dim_date dd on o.order_date::date = dd.date_actual;

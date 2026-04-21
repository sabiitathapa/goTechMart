--1 What is the date of the earliest and latest order, returned in one query?
-- select orders table calculate min and max purchase_ts date and return
select min(orders.purchase_ts) as earliest_order, 
  max(orders.purchase_ts) as latest_order
from `core.orders` as orders;

--2 What is the average order value for purchases made in USD? What about average order value for purchases made in USD in 2019?
-- select orders table, calculate average usd_price in 2019 and return

select avg(orders.usd_price) as avg_usd_2019
from `core.orders` as orders
where orders.currency = 'USD' and extract(year from orders.purchase_ts) = 2019;

--3 Return the id, loyalty program status, and account creation date for customers who made an account on desktop or mobile. Rename the columns to more descriptive names.
-- select customers table, return id, loyalty status and account creation date filter by account created on desktop or mobile 

select customers.id as customer_id, 
  customers.loyalty_program as is_loyalty_member, 
  customers.created_on as account_created_date
from `core.customers_orig` as customers
where customers.account_creation_method in ('desktop', 'mobile');
--where customers.account_creation_method = 'mobile' or customers.account_creation_method = 'desktop';


--4 What are all the unique products that were sold in AUD on website, sorted alphabetically?
-- select orders table return distinct products filter by currency AUD and purchase platform website
select distinct(orders.product_name)
from `core.orders` as orders
where orders.currency = 'AUD' and orders.purchase_platform = 'website'
order by 1;

--5 What are the first 10 countries in the North American region, sorted in descending alphabetical order?
-- select geo lookup table and return first 10 countries filter region by North America sort by desc
select *
from `core.geo_lookup`
where region = 'NA'
order by 1 desc
limit 10;
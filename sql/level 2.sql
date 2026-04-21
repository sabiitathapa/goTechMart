--1. What is the total number of orders by shipping month, sorted from most recent to oldest?
--select orders status table return count of unique orders by shipping_ts month sort by desc
select date_trunc(ship_ts, month) as shipping_month, 
  count(distinct order_id) as total_orders
from `core.order_status`
group by 1 
order by 1 desc;

--2. What is the average order value by year? Can you round the results to 2 decimals?
-- select orders table return aov by year 
select extract(year from purchase_ts) as purchase_year, 
  round(avg(usd_price),2) as aov
from `core.orders`
group by 1
order by 1;

--3. Create a helper column `is_refund`  in the `order_status`  table that returns 1 if there is a refund, 0 if not. Return the first 20 records.
-- select order status table check if return_ts is null return 0 and if not return 1 as is_refund col
select *,
  case when refund_ts is null then 0 else 1 end as is_refund
from `core.order_status`
limit 20;

--4. Return the product IDs and product names of all Apple products.
-- select orders table return unique product id for all apple products
select distinct product_id, 
  product_name
from `core.orders`
where product_name like '%Apple%' 
  or product_name like '%Macbook%';
--where product_name in ('Apple Airpods Headphones', 'Macbook Air Laptop', 'Apple iPhone')

--5. Calculate the time to ship in days for each order and return all original columns from the table.
-- return number of days to ship by calculating difference between ship_ts and purchase_ts in days
select *,
  date_diff(ship_ts, purchase_ts, day) as shipping_days
from `core.order_status`;

--6. What is the refund rate per year, expressed as a percent (i.e. 0.0445 should be shown as 44.5)? Can you round this to 2 decimals?
select extract(year from purchase_ts) as year,
  round(avg(case when refund_ts is null then 0 else 1 end) *100, 2) as refund_rate
from `core.order_status`
group by 1
order by 1;

--7. What is the total number of orders per year for each product? Clean up product names when grouping and return in alphabetical order after sorting by months. 
-- return unique product name and clean up if necessary
-- sum total count of each product per year
select distinct product_name
from `core.orders`;

select date_trunc(purchase_ts, month) as month,
  case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as cleaned_product,
  count (distinct id) as total_orders
from `core.orders`
group by 1, 2
order by 1, 2;

--8. What is the average order value per year for products that are either laptops or headphones? Round this to 2 decimals
-- first checkout the unique product name and return aov for each product per year
select distinct product_name
from `core.orders`;

select extract(year from purchase_ts) as year, 
  round(avg(usd_price),2) as aov
from `core.orders`
where lower(product_name) like '%laptop%' or lower(product_name) like '%headphones%'
group by 1
order by 1;
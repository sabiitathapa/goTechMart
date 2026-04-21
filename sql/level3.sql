--1) What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 
-- join orders table to customers and then to geo lookup
-- filter region by north america and calculate metrics by quarter
-- return aov
select date_trunc(orders.purchase_ts, quarter) as purchase_quarter,
  count(distinct(orders.id)) as order_count,
  round(sum(orders.usd_price),2) as total_sales,
  round(avg(orders.usd_price),2) as aov
from `core.orders` as orders
left join `core.customers` as cs
  on cs.id = orders.customer_id
left join `core.geo_lookup` as geo
  on cs.country_code = geo.country_code
where geo.region = 'NA' and lower(orders.product_name) like '%macbook%'
group by 1
order by 1 desc
;


--What is the average quarterly order count and total sales for Macbooks sold in North America? (i.e. “For North America Macbooks, average of X units sold per quarter and Y in dollar sales per quarter”)
with quarterly_metrics as (
  select date_trunc(orders.purchase_ts, quarter) as purchase_quarter,
  count(distinct orders.id) as total_orders,
  round(sum(orders.usd_price),2) as total_sales
  from `core.orders` as orders
  left join `core.customers` as cs
    on orders.customer_id = cs.id
  left join `core.geo_lookup` as geo
    on cs.country_code = geo.country_code
  where geo.region = 'NA' and lower(orders.product_name) like '%macbook%'
  group by 1
  order by 1
)
select avg(quarterly_metrics.total_orders) as avg_quarter_counts,
  avg(quarterly_metrics.total_sales) as avg_quarter_sales
from quarterly_metrics;

--2) For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver? 
-- join all 4 tables, return region and calculated average time to deliver filter by desc
select geo.region,
  avg(date_diff(os.delivery_ts, os.purchase_ts, day))
from `core.order_status` as os
left join `core.orders` as orders
  on os.order_id = orders.id
left join `core.customers` as cs
  on orders.customer_id = cs.id
left join `core.geo_lookup` as geo
  on cs.country_code = geo.country_code
where (extract(year from orders.purchase_ts) = 2022 and orders.purchase_platform = 'website') or lower(orders.purchase_platform) like '%mobile%'
group by 1
order by 2 desc;


--Rewrite this query for website purchases made in 2022 or Samsung purchases made in 2021, expressing time to deliver in weeks instead of days.
select geo.region,
  avg(date_diff(os.delivery_ts, os.purchase_ts, week)) as week_to_deliver
from `core.order_status` as os
left join `core.orders` as orders
  on os.order_id = orders.id
left join `core.customers` as cs
  on orders.customer_id = cs.id
left join `core.geo_lookup` as geo
  on cs.country_code = geo.country_code
where (extract(year from orders.purchase_ts) = 2020 and orders.purchase_platform = 'website') 
        or (extract(year from orders.purchase_ts) = 2021 and lower(orders.product_name) like '%samsung%')
group by 1
order by 2 desc;

--3) What was the refund rate and refund count for each product overall? 

select case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as cleaned_product,
  avg(case when os.refund_ts is null then 0 else 1 end) as refund_rate,
  sum(case when os.refund_ts is null then 0 else 1 end) as refunds
from `core.order_status` as os
left join `core.orders` as orders
  on os.order_id = orders.id
group by 1
order by 3 desc;

--What was the refund rate and refund count for each product per year? How would you interpret these rates in English?
select extract(year from orders.purchase_ts) as year,
  case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as cleaned_product,
  avg(case when os.refund_ts is null then 0 else 1 end) as refund_rate,
  sum(case when os.refund_ts is null then 0 else 1 end) as refunds
from `core.order_status` as os
left join `core.orders` as orders
  on os.order_id = orders.id
group by 1,2
order by 3 desc;

--4) Within each region, what is the most popular product? 
with sales_by_product as (
  select geo.region,
  case when orders.product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else orders.product_name end as cleaned_product,
  count(distinct orders.id) as order_count
  from `core.orders` as orders
  left join `core.customers` as cs
    on orders.customer_id = cs.id
  left join `core.geo_lookup` as geo
    on cs.country_code = geo.country_code
  group by 1, 2),
ranked_orders as (
  select *,
  row_number() over(partition by region order by order_count desc) as order_ranking
  from sales_by_product
  order by 4 asc
)

select *
from ranked_orders
where order_ranking = 1;

--option 2
with sales_by_product as (
  select region,
  product_name,
  count(distinct orders.id) as total_orders
from core.orders
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup
  on geo_lookup.country_code = customers.country_code
group by 1,2)

select *, 
	row_number() over (partition by region order by total_orders desc) as order_ranking
from sales_by_product
qualify row_number() over (partition by region order by total_orders desc) = 1;

--5) How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 
-- join orders table with customers, calculate time to purchase for loyalty customers and non-loyalty customers
select cs.loyalty_program,
  round(avg(date_diff(orders.purchase_ts, cs.created_on, day)),1) as days_to_purchase,
  round(avg(date_diff(orders.purchase_ts, cs.created_on, month)),1) as months_to_purchase
from `core.customers` as cs
left join `core.orders` as orders
  on cs.id = orders.customer_id
group by 1;

--Update this query to split the time to purchase per loyalty program, per purchase platform. Return the number of records to benchmark the severity of nulls.
select orders.purchase_platform, 
  customers.loyalty_program, 
  round(avg(date_diff(orders.purchase_ts, customers.created_on, day)),1) as days_to_purchase,
  round(avg(date_diff(orders.purchase_ts, customers.created_on, month)),1) as months_to_purchase,
  count(*) as row_count
from core.customers
left join core.orders
  on customers.id = orders.customer_id
group by 1,2;

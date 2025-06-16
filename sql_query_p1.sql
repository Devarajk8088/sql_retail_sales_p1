----SQL Retail Sales Analysis P1 ------
create database sql_project_p1;
use sql_project_p1;
create table retail_sales(
transactions_id int primary key,
sale_date date,
sale_time time,
customer_id int,
gender varchar(15),	
age int,	
category varchar(15),	
quantiy int,
price_per_unit float,
cogs float,	
total_sale float 
);
select transactions_id  from retail_sales
where transactions_id  is null;

select * from retail_sales
where sale_date  is null;

select * from retail_sales
where sale_time  is null;
 
 select * from retail_sales
 where transactions_id is null 
 or sale_date is null  
 or sale_time is null 
 or customer_id is null 
 or gender is null
 or age is null 
 or category is null
 or quantiy is null
 or price_per_unit is null
 or cogs is null
 or total_sale is null;

delete from retail_sales
 where transactions_id is null 
 or sale_date is null  
 or sale_time is null 
 or customer_id is null 
 or gender is null
 or age is null 
 or category is null
 or quantiy is null
 or price_per_unit is null
 or cogs is null
 or total_sale is null;
 use sql_project_p1;
 select count(*) as total_sales from retail_sales;
select count(distinct customer_id) as total_sales from retail_sales;
select count(distinct category) from retail_sales;
select distinct category from retail_sales;
select * from retail_sales
where sale_date ='2022-11-05';
select * from retail_sales
where category='Clothing' and quantiy>=4 and month(sale_date)=11 and year(sale_date)=2022;
select  category,sum(total_sale) as net_sale,count(*) as total_orders from retail_sales
group by category;
select round(avg(age),2) as avg_age from retail_sales
where category='Beauty';
select transactions_id,total_sale from retail_sales
where total_sale>1000; 
select category,gender,count(transactions_id) as total_trans from retail_sales
group by gender,category
order by gender,category;
select year(sale_date) as 'year',month(sale_date) as 'month',avg(total_sale) as avg_sale from retail_sales
group by 1,2
order by 1,3 desc;
select customer_id,sum(total_sale) as totas_sale from retail_sales
group by 1
order by 2 desc;
select customer_id,sum(total_sale) as totas_sale from retail_sales
group by 1
order by 2 desc
limit 5;
select category,count(distinct customer_id) as count_of_unique_customer from retail_sales 
group by category;



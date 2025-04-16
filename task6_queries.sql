-- Connect to MySQL
-- Show databases
show databases;

-- Create a new database named 'sale'
create database sale;

-- Use the 'sale' database
use sale;

-- Create a table named 'online_sale'
create table online_sale (
    order_id int primary key,
    order_date date,
    amount decimal(10,2),
    product_id int
);

-- Insert data into the 'online_sale' table
insert into online_sale (order_id, order_date, amount, product_id) values
    (101, '2024-01-05', 250.00, 1),
    (102, '2024-01-15', 300.00, 2),
    (103, '2024-01-25', 150.00, 1),
    (104, '2024-02-10', 200.00, 3),
    (105, '2024-02-18', 175.00, 1),
    (106, '2024-03-02', 400.00, 2),
    (107, '2024-03-05', 500.00, 4),
    (108, '2024-03-20', 100.00, 3),
    (109, '2024-04-01', 300.00, 4),
    (110, '2024-04-15', 350.00, 2),
    (111, '2024-05-10', 200.00, 1),
    (112, '2024-05-12', 450.00, 3),
    (113, '2024-05-30', 500.00, 4),
    (114, '2024-06-05', 150.00, 2),
    (115, '2024-06-18', 250.00, 1),
    (116, '2024-07-01', 300.00, 3),
    (117, '2024-07-11', 400.00, 4),
    (118, '2024-07-23', 350.00, 2),
    (119, '2024-08-05', 100.00, 1),
    (120, '2024-08-25', 200.00, 4);

-- Q1) Use EXTRACT(MONTH FROM order_date) for month.
-- Select order_id, order_date, and extract the month from order_date
select 
    order_id, 
    order_date, 
    extract(month from order_date) as Month 
from online_sale;

-- Q2) GROUP BY year/month.
-- Get the total orders by year and month
select
    extract(year from order_date) as Year,
    extract(month from order_date) as Month,
    count(*) as total_orders
from online_sale
group by
    extract(year from order_date),
    extract(month from order_date);

-- Q3) Use SUM() for revenue.
-- Get the total revenue by year and month
select
    extract(year from order_date) as Year,
    extract(month from order_date) as Month,
    sum(amount) as total_revenue
from online_sale
group by
    extract(year from order_date),
    extract(month from order_date);

-- Q4) COUNT(DISTINCT order_id) for volume.
-- Get the distinct order volume by year and month
select
    extract(year from order_date) as Year,
    extract(month from order_date) as Month,
    count(distinct order_id) as order_volume
from online_sale
group by
    extract(year from order_date),
    extract(month from order_date);

-- Q5) Use ORDER BY for sorting.
-- Get total revenue by year/month and sort by year ascending, month descending
select
    extract(year from order_date) as Year,
    extract(month from order_date) as Month,   
    sum(amount) as total_revenue
from online_sale
group by
    extract(year from order_date),
    extract(month from order_date)
order by
    year asc, month desc;

-- Q6) Limit results for specific time periods.
-- Get the total order volume for year 2024 and months between 1 and 5
select
    extract(year from order_date) as Year,
    extract(month from order_date) as Month,
    count(distinct order_id) as order_volume
from online_sale
group by
    extract(year from order_date),
    extract(month from order_date)
having 
    Year = 2024 
    and Month between 1 and 5;

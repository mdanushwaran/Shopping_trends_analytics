create database shopping_db;
use shopping_db;

select * from shopping_trends_cleaned_data;

alter table shopping_trends_cleaned_data
rename shopping;

select * from shopping;

select count(customer_id) as No_of_Customer from shopping;

alter table shopping modify column customer_id int;
alter table shopping modify column age int;
alter table shopping 
modify column gender varchar(10),
modify column item_purchased varchar(50),
modify column category varchar(50),
modify column purchase_amount int(50),
modify column location varchar(50),
modify column size varchar(50),
modify column color varchar(50),
modify column season varchar(50),
modify column review_rating double,
modify column subscription_status varchar(50),
modify column payment_method varchar(50),
modify column shipping_type varchar(50),
modify column discount_applied varchar(50),
modify column promo_code_used varchar(50),
modify column previous_purchases int(50),
modify column preferred_payment_method varchar(50),
modify column frequency_of_purchases varchar(50);

select * from shopping;
-----------------------------------------------------------------------------------------------
## Level 1: Beginner (1–15)
-----------------------------------------------------------------------------------------------
## Display only Customer ID, Age, Gender.

select customer_id , Age , Gender from shopping;

-----------------------------------------------------------------------------------------------
## Find customers whose age is greater than 40.

select * from shopping where Age > 40 ;

select Age, count(Age) as Total_count from shopping 
group by Age having Age > 40 order by Age desc  ;
-----------------------------------------------------------------------------------------------

## Find female customers.

select * from shopping 
where Gender = 'Female';

select count(customer_id) as Total_female_candicate from shopping
where Gender = 'Female';

select count(customer_id) as Total_candicate from shopping
where Gender = 'Male';

select Gender , count(customer_id) as Total_candicate from shopping
group by Gender ;
-----------------------------------------------------------------------------------------------

## Find customers from California.

select * from shopping;

select * from shopping 
where location = 'California';

select Gender , count(customer_id)  as Total_candicate from shopping
where location = 'California' group by Gender ;
-----------------------------------------------------------------------------------------------

## Display unique payment methods.

select Distinct payment_method from shopping;

select payment_method from shopping 
group by payment_method;

-----------------------------------------------------------------------------------------------
## Find customers who purchased Clothing.

select * from shopping where category = 'Clothing';

select category , count(customer_id) as Total_candicate from shopping
where category = 'Clothing';
-----------------------------------------------------------------------------------------------

## Find purchases greater than 80.
select * from shopping 
where purchase_amount > 80 order by purchase_amount desc;

select purchase_amount , count(customer_id) as Total_candicate from shopping
group by purchase_amount having purchase_amount > 80 order by purchase_amount desc;
-----------------------------------------------------------------------------------------------

## Sort customers by Purchase Amount (Highest first).

select * from shopping order by purchase_amount desc;
-----------------------------------------------------------------------------------------------

## Display first 10 records.

select * from shopping 
limit 10;
-----------------------------------------------------------------------------------------------

## Count total customers.

select count(customer_id) as Total_no_of_customer from shopping;
-----------------------------------------------------------------------------------------------

## Count male and female customers.

select Gender , count(customer_id) as Total_candicate from shopping
group by Gender;
-----------------------------------------------------------------------------------------------

## Find average purchase amount.

select category , avg(purchase_amount) as Average_purchase_amount from shopping 
group by category;
-----------------------------------------------------------------------------------------------

## Find minimum and maximum purchase amount.

select max(purchase_amount) as Max_purchase_amount , min(purchase_amount) as Min_purchase_amount from shopping;
-----------------------------------------------------------------------------------------------

## Find total sales.

select sum(purchase_amount) as Total_sales from shopping;

select category , sum(purchase_amount) as Total_sales from shopping
group by category;
-----------------------------------------------------------------------------------------------
## Level 2: Aggregate Functions (16–25)
-----------------------------------------------------------------------------------------------
